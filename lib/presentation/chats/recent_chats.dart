import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../infrastructure/chats/db_service.dart';
import '../../infrastructure/models/conversation.dart';
import '../../infrastructure/models/message.dart';
import 'conversation_page.dart';
import 'widgets/recent_chat_trailing_widget.dart';

class RecentChats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chats'),
        centerTitle: true,
      ),
      body: StreamBuilder<List<Conversation>>(
          stream: DBService.instance.getUserConversations(),
          builder: (context, snapshot) {
            if (snapshot.data != null) {
              snapshot.data.removeWhere((data) => data.timestamp == null);
              return snapshot.data.length >= 0
                  ? Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 5.0),
                      child: ListView.builder(
                          itemBuilder: (ctx, index) {
                            return Card(
                              elevation: 2.0,
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0)),
                              shadowColor: Colors.blueAccent,
                              borderOnForeground: true,
                              child: ListTile(
                                onTap: () async {
                                  await DBService.instance.updateChattingWith(
                                      snapshot.data[index].id);
                                  final currentUserid =
                                      await DBService.instance.currentUserId();
                                  ExtendedNavigator.of(ctx).push(
                                      MaterialPageRoute(builder: (context) {
                                    return ConversationPage(
                                      conversationID:
                                          snapshot.data[index].conversationID,
                                      id: snapshot.data[index].id,
                                      image: snapshot.data[index].image,
                                      name: snapshot.data[index].name,
                                      currentUserID: currentUserid,
                                    );
                                  }));
                                },
                                title: Text(snapshot.data[index].name),
                                leading: Container(
                                  width: 50,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                        snapshot.data[index].image == ''
                                            ? 'https://cdn0.iconfinder.com/data/icons/occupation-002/64/programmer-programming-occupation-avatar-512.png'
                                            : snapshot.data[index].image,
                                      ),
                                    ),
                                  ),
                                ),
                                subtitle: Text(
                                  snapshot.data[index].type == MessageType.Text
                                      ? snapshot.data[index].lastMessage
                                      : 'Attachment: Image',
                                  overflow: TextOverflow.ellipsis,
                                ),
                                trailing: RecentChatTrailingWidget(
                                    snapshot.data[index]),
                              ),
                            );
                          },
                          itemCount: snapshot.data.length),
                    )
                  : Align(
                      alignment: Alignment.center,
                      child: Text(
                        'No Conversations Yet!',
                        style: TextStyle(
                          color: Colors.white30,
                          fontSize: 15.0,
                        ),
                      ),
                    );
            } else if (!snapshot.hasData) {
              return Center(child: Text('No Conversation Yet!'));
            }
          }),
    );
  }
}
