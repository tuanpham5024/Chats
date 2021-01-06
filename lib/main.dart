import 'package:chats/screens/splash/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'config/routs.dart';
import 'config/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chats',
      theme: theme(),
      initialRoute: WelcomeScreen.routName,
      routes: routes,
    );
  }
}
