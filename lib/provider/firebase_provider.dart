import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/core/errors.dart';
import 'package:social_media/domain/core/value_objects.dart';
import 'package:social_media/domain/info/info_repo_interface.dart';
import 'package:social_media/infrastructure/info/info_dtos.dart';
// import 'package:social_media/domain/info/info.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import '../infrastructure/core/firestore_helpers.dart';
import 'package:social_media/infrastructure/models/comment.dart';
import 'package:social_media/infrastructure/models/like.dart';
import 'package:social_media/infrastructure/models/post.dart';
import 'package:social_media/injection.dart';
import '../domain/info/info.dart' as u;

class FirebaseProvider {
  // final FirebaseAuth _auth = getIt<FirebaseAuth>();
  final Firestore _firestore = getIt<Firestore>();

  Post post;
  Like like;
  Comment comment;

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
    print("UPDATED LIST LENGTH : ${updatedList.length}");
    return updatedList.map((doc) => Post.fromMap(doc.data)).toList();
  }

  Future<List<Post>> retrieveGirlTalkPosts() async {
    final updatedList = await _post();
    // fetchSearchPosts(updatedList);
    print("UPDATED LIST LENGTH : ${updatedList.length}");
    return updatedList
        .where((element) => element.data['type'] == 'Girl Talk')
        .map((doc) => Post.fromMap(doc.data))
        .toList();
  }

  Future<List<Post>> retrieveRelationshipPosts() async {
    final updatedList = await _post();
    // fetchSearchPosts(updatedList);
    print("UPDATED LIST LENGTH : ${updatedList.length}");
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

  Future<List<DocumentSnapshot>> fetchPostLikeDetails(
      DocumentReference reference) async {
    print("REFERENCE : ${reference.path}");
    QuerySnapshot snapshot = await reference.collection("likes").getDocuments();
    return snapshot.documents;
  }

  Future<bool> checkIfUserLikedOrNot(DocumentReference reference) async {
    final user = await getIt<AuthFacade>().getSignedInUser();
    final id = user.fold(
        () => throw NotAuthenticatedError(), (user) => user.id.getOrCrash());
    DocumentSnapshot snapshot =
        await reference.collection("likes").document(id).get();
    print('DOC ID : ${snapshot.reference.path}');
    return snapshot.exists;
  }
}
