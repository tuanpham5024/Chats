import 'package:flutter/material.dart';

import 'chats/chat_page.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.message),
            title: new Text('Tin nhắn'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.phone),
            title: new Text('Cuộc gọi'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Cá nhân')
          ),

        ],
      ),
      body: ChatPage(),
    );
  }
}
