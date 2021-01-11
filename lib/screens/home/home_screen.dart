import 'package:chats/screens/home/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import 'calls/call_screen.dart';
import 'chats/chat_page.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final tabs = [
    ChatPage(),
    CallScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blueAccent,
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
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: tabs[_currentIndex]
    );
  }
}
