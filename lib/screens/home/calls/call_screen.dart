import 'package:chats/components/custom_appbar.dart';
import 'package:chats/models/call_users.dart';
import 'package:chats/screens/home/calls/call.dart';
import 'package:flutter/material.dart';


enum CallType {
  IncomingCall,
  CallAway,
}


class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {

  List<CallUsers> callUsers = [
    CallUsers(
        text: "Sherlock Holmes", image: "assets/images/logo.png", time: "now", type: CallType.IncomingCall),
    CallUsers(
        text: "Lươn Thanh Độ", image: "assets/images/logo.png", time: "03.30 AM", type: CallType.CallAway),
    CallUsers(
        text: "Watson", image: "assets/images/logo.png", time: "4.30 PM", type: CallType.IncomingCall),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
        CustomAppBar(
        text: "Cuộc gọi gần đây",
          icon: "assets/images/search.png",
        ),
        ListView.builder(
          itemCount: callUsers.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return CallUsersList(text: callUsers[index].text, image: callUsers[index].image, time: callUsers[index].time, type: callUsers[index].type,);
          },
        ),
        ],
      ),
    ),);
  }
}
