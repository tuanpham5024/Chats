import 'package:chats/config/constants.dart';
import 'package:flutter/material.dart';

import 'chat_detail.dart';

// ignore: must_be_immutable
class ChatUsersList extends StatefulWidget {
  String text;
  String secondaryText;
  String image;
  String time;
  bool isMessageRead;

  ChatUsersList(
      {@required this.text,
      @required this.secondaryText,
      @required this.image,
      @required this.time,
      @required this.isMessageRead});

  @override
  _ChatUsersListState createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ChatDetail.routName);
      },
      child: Container(
          color: widget.isMessageRead? Colors.white: Color(0xFFF4F4F4),
        padding: EdgeInsets.all(14),
        child: Row(
          children: [
            Expanded(
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    maxRadius: 30,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(widget.text),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          widget.secondaryText,
                          style: TextStyle(
                              fontSize: 14, color: Colors.grey.shade500),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Text(
              widget.time,
              style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
            )
          ],
        ),
      ),
    );
  }
}
