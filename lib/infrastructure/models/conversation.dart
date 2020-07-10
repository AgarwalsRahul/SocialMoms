import 'package:cloud_firestore/cloud_firestore.dart';

import 'message.dart';

class Conversation {
  final String id;
  final String conversationID;
  final String image;
  final String lastMessage;
  final String name;
  final MessageType type;
  final int unseenCount;
  final Timestamp timestamp;

  Conversation({
    this.type,
    this.id,
    this.conversationID,
    this.image,
    this.lastMessage,
    this.name,
    this.unseenCount,
    this.timestamp,
  });

  factory Conversation.fromfirestore(DocumentSnapshot snapshot) {
    var data = snapshot.data;
    MessageType type = MessageType.Text;
    if (data['type'] != null) {
      data['type'] == 'text'
          ? type = MessageType.Text
          : type = MessageType.Image;
    }
    return Conversation(
      id: snapshot.documentID,
      conversationID: data['conversationID'],
      image: data['image'],
      lastMessage: data['lastMessage'] != null ? data['lastMessage'] : '',
      name: data['name'],
      unseenCount: data['unseenCount'],
      timestamp: data['timestamp'] != null ? data['timestamp'] : null,
      type: type,
    );
  }
}

class Conversations {
  final String id;
  final List members;
  final List<Message> messages;
  final String ownerID;

  Conversations({
    this.id,
    this.members,
    this.messages,
    this.ownerID,
  });

  factory Conversations.fromfirestore(DocumentSnapshot _snapshot) {
    var _data = _snapshot.data;
    List _messages = _data['messages'];
    if (_messages != null) {
      _messages = _messages.map((msg) {
        MessageType msgType =
            msg['type'] == 'text' ? MessageType.Text : MessageType.Image;
        return Message(
          content: msg['message'],
          senderID: msg['senderID'],
          timestamp: msg['timestamp'],
          type: msgType,
        );
      }).toList();
    } else {
      _messages = [];
    }
    return Conversations(
      id: _snapshot.documentID,
      members: _data['members'],
      ownerID: _data['ownerID'],
      messages: _messages,
    );
  }
}
