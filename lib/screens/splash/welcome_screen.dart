import 'package:chats/components/default_button.dart';
import 'package:chats/config/size_config.dart';
import 'package:chats/screens/auth/login/login_screen.dart';
import 'package:chats/screens/auth/register/register.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routName = 'welcome_screen';

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0 , 10 , 20),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(40),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/logo.png",
                  ),
                  height: getProportionateScreenHeight(150),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(150),
                ),
                DefaultButton(
                  text: "Đăng nhập",
                  press: () {
                    Navigator.pushNamed(context, LoginScreen.routName);
                  },
                ),
                SizedBox(height: 20),
                DefaultButton(
                  text: "Đăng ký",
                  press: () {
                    Navigator.pushNamed(context, RegisterScreen.routName);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
