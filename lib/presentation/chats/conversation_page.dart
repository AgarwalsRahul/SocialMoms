import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../infrastructure/chats/db_service.dart';
import '../../infrastructure/models/conversation.dart';
import '../../infrastructure/models/message.dart';
import '../info/widget/image_selector.dart';
import 'widgets/curved_container.dart';

class ConversationPage extends StatefulWidget {
  final String name;
  final String id;
  final String image;
  final String conversationID;
  final String currentUserID;

  const ConversationPage({
    this.currentUserID,
    this.name,
    this.id,
    this.image,
    this.conversationID,
  });

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  double _deviceHeight;
  double _deviceWidth;
  ScrollController _scrollController = ScrollController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _messageText = '';
  // AuthProvider _auth;

  @override
  void dispose() {
    DBService.instance.updateChattingWith('');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.name),
        elevation: 0,
        // backgroundColor: Colors.black,
      ),
      body: Stack(
        children: <Widget>[
          CurvedContainer(
            color: Colors.black,
            height: _deviceHeight,
            width: _deviceWidth,
            child: Container(),
          ),
          Column(
            children: <Widget>[
              Expanded(
                child: CurvedContainer(
                  color: Colors.black45,
                  height: _deviceHeight,
                  width: _deviceWidth,
                  child: _conversationPageBody(),
                ),
              ),
              messageField(context),
            ],
          ),
        ],
      ),
    );
  }

  Widget _conversationPageBody() {
    return _conversationListView();
  }

  Widget _conversationListView() {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: StreamBuilder<Conversations>(
          stream: DBService.instance.getConversations(widget.conversationID),
          builder: (context, snapshot) {
            Timer(Duration(milliseconds: 50), () {
              if (_scrollController.hasClients)
                return _scrollController
                    .jumpTo(_scrollController.position.maxScrollExtent);
            });
            var data = snapshot.data;
            if (data != null) {
              if (data.messages.length != 0) {
                return ListView.builder(
                    controller: _scrollController,
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                    itemCount: data.messages.length,
                    itemBuilder: (ctx, i) {
                      bool isMe =
                          widget.currentUserID == data.messages[i].senderID;
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: isMe
                              ? MainAxisAlignment.end
                              : MainAxisAlignment.start,
                          children: <Widget>[
                            isMe ? Container() : _imagebuilder(),
                            SizedBox(
                              width: _deviceWidth * 0.02,
                            ),
                            data.messages[i].type == MessageType.Text
                                ? _textMessageContainer(
                                    data.messages[i].content,
                                    isMe,
                                    data.messages[i].timestamp,
                                  )
                                : _imageMessageContainer(
                                    data.messages[i].content,
                                    isMe,
                                    data.messages[i].timestamp,
                                  ),
                          ],
                        ),
                      );
                    });
              } else {
                return Align(
                    alignment: Alignment.center,
                    child: Text("Let's start a conversation!"));
              }
            } else {
              return Center(child: CircularProgressIndicator());
            }
          }),
    );
  }

  Widget _textMessageContainer(String message, bool isMe, Timestamp timestamp) {
    List<Color> _colors = isMe
        ? [
            Colors.amber,
            Colors.amber.shade600,
          ]
        : [Color.fromRGBO(40, 39, 39, 1), Color.fromRGBO(30, 30, 30, 1)];
    return Container(
      height: _deviceHeight * 0.08 + (message.length / 20 * 5.0),
      width: _deviceWidth * 0.75,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      decoration: BoxDecoration(
        borderRadius: isMe
            ? BorderRadius.only(
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                topLeft: Radius.circular(10.0))
            : BorderRadius.only(
                bottomRight: Radius.circular(10.0),
                bottomLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0)),
        gradient: LinearGradient(
          colors: _colors,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [
            0.30,
            0.70,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Text(message),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(timeago.format(timestamp.toDate()),
                style: TextStyle(color: Colors.white54, fontSize: 15.0)),
          ),
        ],
      ),
    );
  }

  Widget _imagebuilder() {
    var _imageRadius = _deviceHeight * 0.05;
    return ImageSelector(
      width: _imageRadius,
      height: _imageRadius,
      image: DecorationImage(
        fit: BoxFit.cover,
        image: NetworkImage(
          widget.image == ''
              ? 'https://cdn0.iconfinder.com/data/icons/occupation-002/64/programmer-programming-occupation-avatar-512.png'
              : widget.image,
        ),
      ),
      borderRadius: _imageRadius,
      onTap: null,
    );
  }

  Widget messageField(BuildContext context) {
    return Container(
      height: _deviceHeight * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(23, 23, 23, 1),
      ),
      margin: EdgeInsets.only(
          left: _deviceWidth * 0.02,
          right: _deviceWidth * 0.02,
          bottom: _deviceHeight * 0.01,
          top: _deviceHeight * 0.02),
      child: Form(
        key: _formKey,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _messageTextField(),
            _sendMessageButton(),
            _imageButton()
          ],
        ),
      ),
    );
  }

  Widget _messageTextField() {
    return SizedBox(
      width: _deviceWidth * 0.55,
      child: TextFormField(
        autocorrect: false,
        validator: (input) {
          if (input.length == 0) {
            return 'Please enter a message';
          }
          return null;
        },
        decoration: InputDecoration(
          hintText: 'Type a message',
          border: InputBorder.none,
        ),
        onChanged: (_) {
          _formKey.currentState.save();
        },
        onSaved: (input) {
          setState(() {
            _messageText = input;
          });
        },
        cursorColor: Colors.white,
      ),
    );
  }

  Widget _sendMessageButton() {
    return Container(
      height: _deviceHeight * 0.05,
      width: _deviceHeight * 0.05,
      child: IconButton(
          icon: Icon(Icons.send),
          onPressed: () {
            if (_formKey.currentState.validate()) {
              _formKey.currentState.save();
              DBService.instance.sendMessage(
                  widget.conversationID,
                  Message(
                      content: _messageText,
                      senderID: widget.currentUserID,
                      timestamp: Timestamp.now(),
                      type: MessageType.Text));
              _formKey.currentState.reset();
            }
          }),
    );
  }

  Widget _imageButton() {
    return Container(
      height: _deviceHeight * 0.05,
      width: _deviceHeight * 0.05,
      child: FloatingActionButton(
          onPressed: () {
            // var _image = await MediaService.instance.getImage();
            // if (_image != null) {
            //   var _result = await CloudStorageService.instance
            //       .uploadMediaImage(_image, _auth.user.uid);
            //   String _imageUrl = await _result.ref.getDownloadURL();
            //   DBService.instance.sendMessage(
            //       widget.conversationID,
            //       Message(
            //         content: _imageUrl,
            //         senderID: _auth.user.uid,
            //         timestamp: Timestamp.now(),
            //         type: MessageType.Image,
            //       ));
            // }
          },
          child: Icon(
            Icons.camera_enhance,
          )),
    );
  }

  Widget _imageMessageContainer(
      String imageUrl, bool isMe, Timestamp timestamp) {
    List<Color> _colors = isMe
        ? [Colors.blue, Color.fromRGBO(42, 117, 188, 1)]
        : [Color.fromRGBO(40, 39, 39, 1), Color.fromRGBO(30, 30, 30, 1)];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        gradient: LinearGradient(
          colors: _colors,
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [
            0.30,
            0.70,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            height: _deviceHeight * 0.30,
            width: _deviceWidth * 0.40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                )),
          ),
          Text(timeago.format(timestamp.toDate()),
              style: TextStyle(color: Colors.white54, fontSize: 15.0)),
        ],
      ),
    );
  }
}
