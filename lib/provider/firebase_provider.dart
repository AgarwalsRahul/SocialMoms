import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/core/errors.dart';
import 'package:social_media/domain/core/value_objects.dart';
import 'package:social_media/infrastructure/info/info_dtos.dart';
import 'package:social_media/infrastructure/models/comment.dart';
import 'package:social_media/infrastructure/models/like.dart';
import 'package:social_media/infrastructure/models/post.dart';
import 'package:social_media/injection.dart';

import '../domain/info/info.dart' as u;
import '../infrastructure/core/firestore_helpers.dart';

class FirebaseProvider {
  // final FirebaseAuth _auth = getIt<FirebaseAuth>();
  final Firestore _firestore = getIt<Firestore>();

  Post post;
  Like like;
  Comment comment;
  String currentUserId;

  FirebaseProvider() {
    setCurrentUserId();
  }

  void setCurrentUserId() async {
    final user = await getIt<AuthFacade>().getSignedInUser();

    final id = user.fold(
        () => throw NotAuthenticatedError(), (user) => user.id.getOrCrash());
    currentUserId = id;
  }

  Future<u.UserInfo> getUserInfo() async {
    final userDoc = await _firestore.userDocument();
    return userDoc.infoCollection.getDocuments().then((snapshot) => snapshot
        .documents
        .map((doc) => InfoDTO.fromFirestore(doc).toDomain())
        .toList()[0]);
  }

  Future<void> addPostToDb(String caption, String type) async {
    final user = await getIt<AuthFacade>().getSignedInUser();

    final id = user.fold(
        () => throw NotAuthenticatedError(), (user) => user.id.getOrCrash());
    final userDoc = await _firestore.userDocument();

    final currentUser = await getUserInfo();
    post = Post(
        id: UniqueId().getOrCrash(),
        postLikes: [],
        currentUserUid: id,
        caption: caption,
        type: type,
        postOwnerName: currentUser.userName.getOrCrash(),
        postOwnerPhotoUrl: currentUser.imageUrl,
        time: FieldValue.serverTimestamp());

    return userDoc.postCollection.document(post.id).setData(post.toMap(post));
  }

  Future<List<DocumentSnapshot>> retrieveUserPosts() async {
    final userDoc = await _firestore.userDocument();

    return userDoc.postCollection
        .getDocuments()
        .then((value) => value.documents);
  }

  Future<List<DocumentSnapshot>> _post() async {
    final user = await getIt<AuthFacade>().getSignedInUser();
    final id = user.fold(
        () => throw NotAuthenticatedError(), (user) => user.id.getOrCrash());
    List<DocumentSnapshot> list = List<DocumentSnapshot>();
    List<DocumentSnapshot> updatedList = List<DocumentSnapshot>();
    QuerySnapshot querySnapshot;
    QuerySnapshot snapshot =
        await _firestore.collection("users").getDocuments();
    for (int i = 0; i < snapshot.documents.length; i++) {
      if (snapshot.documents[i].documentID != id) {
        list.add(snapshot.documents[i]);
      }
    }
    for (var i = 0; i < list.length; i++) {
      querySnapshot =
          await list[i].reference.collection("posts").getDocuments();
      for (var i = 0; i < querySnapshot.documents.length; i++) {
        updatedList.add(querySnapshot.documents[i]);
      }
    }
    return updatedList;
  }

  Future<List<Post>> retrievePosts() async {
    // fetchSearchPosts(updatedList);
    final updatedList = await _post();

    return updatedList.map((doc) => Post.fromMap(doc.data)).toList();
  }

  Future<List<Post>> retrieveGirlTalkPosts() async {
    final updatedList = await _post();

    return updatedList
        .where((element) => element.data['type'] == 'Girl Talk')
        .map((doc) => Post.fromMap(doc.data))
        .toList();
  }

  Future<List<Post>> retrieveRelationshipPosts() async {
    final updatedList = await _post();

    return updatedList
        .where((element) => element.data['type'] == 'Relationship')
        .map((doc) => Post.fromMap(doc.data))
        .toList();
  }

  Future<List<DocumentSnapshot>> fetchPostCommentDetails(
      DocumentReference reference) async {
    QuerySnapshot snapshot =
        await reference.collection("comments").getDocuments();
    return snapshot.documents;
  }

  // Future<List<DocumentSnapshot>> fetchPostLikeDetails(
  //     DocumentReference reference) async {

  //   QuerySnapshot snapshot = await reference.collection("likes").getDocuments();
  //   return snapshot.documents;
  // }

  Future<void> addLikesIntoDb(Post post) async {
    // final user = await getIt<AuthFacade>().getSignedInUser();
    // final userId = user.fold(
    //     () => throw NotAuthenticatedError(), (user) => user.id.getOrCrash());
    await _firestore
        .collection('users')
        .document(post.currentUserUid)
        .collection('posts')
        .document(post.id)
        .setData({'postLikes': post.postLikes}, merge: true);
  }

  // Future<bool> checkIfUserLikedOrNot(String postId) async {
  //   final user = await getIt<AuthFacade>().getSignedInUser();
  //   final id = user.fold(
  //       () => throw NotAuthenticatedError(), (user) => user.id.getOrCrash());
  //   DocumentSnapshot snapshot =
  //       await _firestore.collection("Likes").document(id).get();
  //   final List<String> likes =
  //       snapshot.data['postId'] == null ? [] : snapshot.data['postId'];
  //   print(likes);
  //   return likes.contains(postId);
  // }

  Future<List<u.UserInfo>> fetchAroundMeUsersInfo() async {
    final userOption = await getIt<AuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    final userData = await _firestore
        .collection('users')
        .document(user.id.getOrCrash())
        .get();
    final city = userData.data['cities'];
    final userDocuments = await _firestore.collection('users').getDocuments();

    final ids = userDocuments.documents
        .where((doc) => doc.documentID != user.id.getOrCrash())
        .toList();

    final filterIds =
        ids.where((element) => element.data['cities'] == city).toList();
    final List<u.UserInfo> list = [];

    for (var i = 0; i < filterIds.length; i++) {
      final userInfoDoc = await filterIds[i]
          .reference
          .collection('info')
          .document(filterIds[i].documentID)
          .get();

      final userInfo = InfoDTO.fromFirestore(userInfoDoc).toDomain();

      if (userInfo != null) {
        list.add(userInfo);
      }
    }

    return list;
  }

  Future<List<u.UserInfo>> fetchAllUsers() async {
    final userOption = await getIt<AuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    final userDocuments = await _firestore.collection('users').getDocuments();

    final ids = userDocuments.documents
        .where((doc) => doc.documentID != user.id.getOrCrash())
        .toList();
    final List<u.UserInfo> list = [];

    for (var i = 0; i < ids.length; i++) {
      final userInfoDoc =
          await ids[i].reference.collection('info').getDocuments();
      if (userInfoDoc.documents != null)
        list.add(userInfoDoc.documents
            .map((docSnap) => InfoDTO.fromFirestore(docSnap).toDomain())
            .toList()[0]);
    }
    return list;
  }

  Future<List<u.UserInfo>> fetchExpertUsers() async {
    final userOption = await getIt<AuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());

    final userDocuments = await _firestore.collection('users').getDocuments();

    final ids = userDocuments.documents
        .where((doc) => doc.documentID != user.id.getOrCrash())
        .toList();

    final List<u.UserInfo> list = [];

    for (var i = 0; i < ids.length; i++) {
      final userInfoDoc = await ids[i]
          .reference
          .collection('info')
          .document(ids[i].documentID)
          .get();
      if (userInfoDoc.data['expertOrNot'] == true && userInfoDoc.data != null) {
        list.add(InfoDTO.fromFirestore(userInfoDoc).toDomain());
      }
    }
    return list;
  }
}
