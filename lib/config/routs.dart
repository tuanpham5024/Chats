import 'package:chats/screens/auth/login/login_screen.dart';
import 'package:chats/screens/auth/register/register.dart';
import 'package:chats/screens/home/chats/chat_detail.dart';
import 'package:chats/screens/home/home_screen.dart';
import 'package:chats/screens/splash/welcome_screen.dart';
import 'package:flutter/widgets.dart';

final Map<String, WidgetBuilder> routes = {
  WelcomeScreen.routName: (context) => WelcomeScreen(),
  LoginScreen.routName: (context) => LoginScreen(),
  RegisterScreen.routName: (context) => RegisterScreen(),

  HomeScreen.routName: (context) => HomeScreen(),
  ChatDetail.routName: (context) => ChatDetail()
};
