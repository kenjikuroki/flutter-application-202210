import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/message.dart';

class TalkRoomPage extends StatefulWidget {
  final String name;
  const TalkRoomPage(this.name, {super.key});

  @override
  State<TalkRoomPage> createState() => _TalkRoomPageState();
}

class _TalkRoomPageState extends State<TalkRoomPage> {
  List<Message> messageList = [
    Message(message: 'a', isMe: true, sendTime: DateTime(2022, 1, 1, 12, 9)),
    Message(message: 'b', isMe: true, sendTime: DateTime(2022, 1, 1, 12, 13))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: ListView.builder(
          itemCount: messageList.length,
          itemBuilder: (context, index) {
            return Text('a');
          }),
    );
  }
}
