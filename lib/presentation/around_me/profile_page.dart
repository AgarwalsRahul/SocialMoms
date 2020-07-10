import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:slimy_card/slimy_card.dart';
import 'package:social_media/domain/info/info.dart';
import 'package:social_media/infrastructure/chats/db_service.dart';
import 'package:social_media/presentation/chats/conversation_page.dart';

class ProfilePage extends StatelessWidget {
  final UserInfo userInfo;

  const ProfilePage({Key key, this.userInfo}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          initialData: false,
          stream: slimyCard.stream,
          builder: (context, snapshot) {
            return ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(height: 100),
                SlimyCard(
                  bottomCardHeight: MediaQuery.of(context).size.height * 0.18,
                  color: Colors.red,
                  topCardWidget: topCardWidget(userInfo, context),
                  bottomCardWidget: SingleChildScrollView(
                      child: bottomCardWidget(userInfo, context)),
                ),
              ],
            );
          }),
    );
  }

  Widget topCardWidget(UserInfo userInfo, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: NetworkImage(userInfo.imageUrl == ''
                    ? 'https://cdn0.iconfinder.com/data/icons/occupation-002/64/programmer-programming-occupation-avatar-512.png'
                    : userInfo.imageUrl)),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 20,
                spreadRadius: 1,
              ),
            ],
          ),
        ),
        SizedBox(height: 15),
        Text(
          userInfo.userName.getOrCrash(),
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        SizedBox(height: 15),
        Text(
          userInfo.shortBio.getOrCrash(),
          style: TextStyle(
              color: Colors.white.withOpacity(0.8),
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
      ],
    );
  }

  Widget bottomCardWidget(UserInfo userInfo, BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            FlatButton(
                onPressed: () {},
                child: Text(
                  'NOT INTERESTED',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                )),
            FlatButton(
                onPressed: () async {
                  final currentUserId =
                      await DBService.instance.currentUserId();
                  await DBService.instance.createOrGetConversations(
                      userInfo.userID,
                      (_conversationID) =>
                          ExtendedNavigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ConversationPage(
                                    conversationID: _conversationID,
                                    currentUserID: currentUserId,
                                    image: userInfo.imageUrl,
                                    name: userInfo.userName.getOrCrash(),
                                    id: userInfo.userID,
                                  ))));
                },
                child: Text(
                  'SAY HI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ))
          ],
        ),
        Center(
          child: IconButton(
              color: Colors.white,
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                ExtendedNavigator.of(context).pop();
              }),
        )
      ],
    );
  }
}
