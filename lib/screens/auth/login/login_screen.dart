import 'package:chats/components/default_button.dart';
import 'package:chats/config/constants.dart';
import 'package:chats/config/size_config.dart';
import 'package:chats/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String routName = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox( height: getProportionateScreenHeight(20)),
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
                  "Đăng nhập",
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
                  ),
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
              Container(
                padding: EdgeInsets.only(top: 15),
                child: GestureDetector(
                  onTap: () {
                    // TODO: chuyển sang màn hình quên mật khẩu
                  },
                  child: Text(
                    "Bạn quên mật khẩu?",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: kTextSecondary,
                    ),
                  ),
                ),
              ),
              SizedBox(height: getProportionateScreenHeight(50),),
              DefaultButton(text: "Đăng nhập", press: (){
                Navigator.pushNamed(context, HomeScreen.routName);
              },)
            ],
          ),
        ),
      ),
    );
  }
}
