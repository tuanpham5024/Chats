import 'package:chats/screens/home/calls/call_screen.dart';
import 'package:flutter/material.dart';

class CallUsers {
  String text;
  String image;
  String time;
  CallType type;

  CallUsers(
      {@required this.text,
        @required this.image,
        @required this.time,
        @required this.type,
      });
}
