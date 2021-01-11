import 'package:chats/components/custom_appbar.dart';
import 'package:chats/models/call_users.dart';
import 'package:chats/screens/home/calls/call.dart';
import 'package:flutter/material.dart';

class CallScreen extends StatefulWidget {
  @override
  _CallScreenState createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {

  List<CallUsers> callUsers = [
    CallUsers(text: "Sherlock Holmes", image: "assets/images/logo.png", time: "now"),
    CallUsers(text: "Sherlock Holmes", image: "assets/images/logo.png", time: "now"),
    CallUsers(text: "Sherlock Holmes", image: "assets/images/logo.png", time: "now"),
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
              itemCount: 0,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return CallUsersList(text: callUsers[index].text, image: callUsers[index].image, time: callUsers[index].time);
              },
            ),
            Container(
              child: Center(
                child: Text("???"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
