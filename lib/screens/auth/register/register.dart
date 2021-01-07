import 'package:chats/components/default_button.dart';
import 'package:chats/config/constants.dart';
import 'package:chats/config/size_config.dart';
import 'package:chats/screens/auth/login/login_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  static const String routName = 'register_screen';
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox( height: getProportionateScreenHeight(10)),
              Container(
                child: Image.asset(
                  "assets/images/logo.png",
                ),
                height: getProportionateScreenHeight(150),
              ),
              SizedBox(height: getProportionateScreenHeight(60)),
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Đăng ký",
                  style: TextStyle(
                    fontSize: 30,
                    color: kTextPrimary,
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30),),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Nhập email của bạn",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(14),
                          getProportionateScreenWidth(14), getProportionateScreenWidth(14)),
                      child: Icon(Icons.email),
                    )
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30),),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Nhập mật khẩu",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(14),
                          getProportionateScreenWidth(14), getProportionateScreenWidth(14)),
                      child: Icon(Icons.lock),
                    )
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(30),),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Nhập lại mật khẩu",
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(25.0),
                      borderSide: new BorderSide(),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.fromLTRB(0, getProportionateScreenWidth(14),
                          getProportionateScreenWidth(14), getProportionateScreenWidth(14)),
                      child: Icon(Icons.lock),
                    )
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, LoginScreen.routName);
                  },
                  child: Text(
                    "Bạn đã có tài khoản?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: kTextSecondary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(50),),
              DefaultButton(text: "Đăng ký", press: (){},)
            ],
          ),
        ),
      ),
    );
  }
}
