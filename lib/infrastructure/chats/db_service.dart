import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:social_media/domain/auth/auth_facade.dart';
import 'package:social_media/domain/core/errors.dart';
import 'package:social_media/infrastructure/models/conversation.dart';
import 'package:social_media/infrastructure/models/message.dart';
import 'package:social_media/injection.dart';

class DBService {
  static DBService instance = DBService();
  Firestore _db = Firestore.instance;
  String _userCollections = 'users';
  String _conversationCollections = 'Conversations';

  // Future<void> createUserInDatabase(User user) async {
  //   try {
  //     return await _db
  //         .collection(_userCollections)
  //         .document(user.id)
  //         .setData(user.toMap());
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }

  // Stream<Contact> getUserData(String uid) {
  //   var _ref = _db.collection(_userCollections).document(uid);
  //   return _ref
  //       .get()
  //       .asStream()
  //       .map((snapshot) => Contact.fromfirestore(snapshot));
  // }

  Stream<List<Conversation>> getUserConversations() async* {
    final uid = await currentUserId();
    var _ref = _db
        .collection(_userCollections)
        .document(uid)
        .collection(_conversationCollections);
    yield* _ref.snapshots().map((_snapshots) {
      return _snapshots.documents.map((doc) {
        return Conversation.fromfirestore(doc);
      }).toList();
    });
  }

  Future<void> sendMessage(String conversationID, Message message) {
    var _ref =
        _db.collection(_conversationCollections).document(conversationID);
    var _messageType = message.type == MessageType.Text ? 'text' : 'image';
    return _ref.updateData({
      'messages': FieldValue.arrayUnion([
        {
          'message': message.content,
          'senderID': message.senderID,
          'type': _messageType,
          'timestamp': message.timestamp,
        }
      ]),
    });
  }

  Stream<Conversations> getConversations(String conversationID) {
    var _ref =
        _db.collection(_conversationCollections).document(conversationID);
    return _ref.snapshots().map((snapshot) {
      return Conversations.fromfirestore(snapshot);
    });
  }

  // Future<void> updateLastSeen(String uid) {
  //   var _ref = _db.collection(_userCollections).document(uid);
  //   return _ref.updateData({
  //     'lastSeen': Timestamp.now(),
  //   });
  // }

  Future<void> updateChattingWith(String recipentID) async {
    final uid = await currentUserId();
    var _ref = _db.collection(_userCollections).document(uid);
    return await _ref.setData({
      'chattingWith': recipentID,
    }, merge: true);
  }

  // Future<void> updateToken(String uid, String token) async {
  //   var _ref = _db.collection(_userCollections).document(uid);
  //   return await _ref.setData({'pushToken': token}, merge: true);
  // }

  // Stream<List<Contact>> getUsers(String _searchText) {
  //   var _ref = _db
  //       .collection(_userCollections)
  //       .where("name", isGreaterThanOrEqualTo: _searchText)
  //       .where('name', isLessThan: _searchText + 'z');
  //   return _ref.getDocuments().asStream().map((snapshot) {
  //     return snapshot.documents.map((_doc) {
  //       return Contact.fromfirestore(_doc);
  //     }).toList();
  //   });
  // }
  Future<String> currentUserId() async {
    var _currentUser = await getIt<AuthFacade>().getSignedInUser();
    var _currentId = _currentUser
        .getOrElse(() => throw NotAuthenticatedError())
        .id
        .getOrCrash();
    return _currentId;
  }

  Future<void> createOrGetConversations(String _recipientID,
      Future<void> onSuccess(String _conversationID)) async {
    var _currentId = await currentUserId();
    var _ref = _db.collection(_conversationCollections);
    var _userConversationRef = _db
        .collection(_userCollections)
        .document(_currentId)
        .collection(_conversationCollections);
    try {
      var conversation =
          await _userConversationRef.document(_recipientID).get();
      if (conversation.data != null) {
        return onSuccess(conversation.data['conversationID']);
      } else {
        var _conversationref = _ref.document();
        await _conversationref.setData({
          'messages': [],
          'ownerID': _currentId,
          'members': [_currentId, _recipientID],
        });
        return onSuccess(_conversationref.documentID);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
