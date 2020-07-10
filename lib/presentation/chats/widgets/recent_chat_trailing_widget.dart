import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../infrastructure/models/conversation.dart';

class RecentChatTrailingWidget extends StatelessWidget {
  final Conversation data;
  RecentChatTrailingWidget(this.data);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Text(
          'Last Message',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          timeago.format(data.timestamp.toDate()),
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
