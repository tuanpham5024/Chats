import 'package:chats/components/custom_appbar.dart';
import 'package:chats/config/constants.dart';
import 'package:chats/models/chat_users.dart';
import 'package:chats/screens/home/chats/chat.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  static const String routName = 'chat_page';

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now"),
    ChatUsers(text: "Phạm Anh Tuấn",
        secondaryText: "Hí anh em...",
        image: "assets/images/logo.png",
        time: "now")
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
              text: "Cuộc trò chuyện gần đây",
              icon: "assets/images/logo.png",
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Tìm kiếm",
                    hintStyle: TextStyle(color: Colors.grey.shade400),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade400,
                      size: 25,
                    ),
                    filled: true,
                    contentPadding: EdgeInsets.all(8),
                    fillColor: Colors.grey.shade100,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey.shade100))),

              ),
            ),
            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ChatUsersList(text: chatUsers[index].text,
                    secondaryText: chatUsers[index].secondaryText,
                    image: chatUsers[index].image,
                    time: chatUsers[index].time,
                    isMessageRead: (index == 0 || index == 3) ? true : false);
              },
            )
          ],
        ),
      ),
    );
  }
}

