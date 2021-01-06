import 'package:chats/config/size_config.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routName = 'welcome_screen';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              SizedBox(height: getProportionateScreenHeight(40),),
              Container(
                child: Image.asset(
                  "assets/images/logo.png"
                ),
                width: getProportionateScreenHeight(120),
              ),
              Container(
              )
            ],
          ),
        ),
      ),
    );
  }
}
