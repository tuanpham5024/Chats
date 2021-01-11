import 'package:chats/components/custom_appbar.dart';
import 'package:chats/config/constants.dart';
import 'package:chats/config/size_config.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            CustomAppBar(
              text: "Cài đặt",
              icon: "assets/images/search.png",
            ),
            Container(
              padding: EdgeInsets.only(
                  left: getProportionateScreenHeight(12),
                  top: getProportionateScreenHeight(12)),
              child: Row(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/logo.png"),
                    maxRadius: 35,
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sherlock Holmes",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: kTextPrimary),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          "Tôi là thám tử bla blo :<",
                          style: TextStyle(fontSize: 14, color: kTextSecondary),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(12),
            ),
            Divider(
              color: Colors.grey.shade500,
            ),
            Container(
              padding: EdgeInsets.only(
                top: getProportionateScreenHeight(10),
                left: getProportionateScreenWidth(16),
                right: getProportionateScreenWidth(16),
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.bedtime_rounded,
                                size: 30, color: kPrimaryColor),
                            SizedBox(
                              width: getProportionateScreenWidth(12),
                            ),
                            Text(
                              "Dark mode",
                              style:
                                  TextStyle(fontSize: 18, color: kPrimaryColor),
                            ),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.account_box_outlined, size: 30,color: kPrimaryColor),
                            SizedBox(width: getProportionateScreenWidth(12),),
                            Text("Tài khoản", style: TextStyle(fontSize: 18, color: kPrimaryColor),),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.notification_important_rounded, size: 30,color: kPrimaryColor),
                            SizedBox(width: getProportionateScreenWidth(12),),
                            Text("Thông báo", style: TextStyle(fontSize: 18, color: kPrimaryColor),),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.message, size: 30,color: kPrimaryColor),
                            SizedBox(width: getProportionateScreenWidth(12),),
                            Text("Tin nhắn", style: TextStyle(fontSize: 18, color: kPrimaryColor),),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.lock, size: 30,color: kPrimaryColor),
                            SizedBox(width: getProportionateScreenWidth(12),),
                            Text("Bảo mật", style: TextStyle(fontSize: 18, color: kPrimaryColor),),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                  SizedBox(height: getProportionateScreenHeight(40),),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.info_outline, size: 30,color: kPrimaryColor),
                            SizedBox(width: getProportionateScreenWidth(12),),
                            Text("Thông tin", style: TextStyle(fontSize: 18, color: kPrimaryColor),),
                          ],
                        ),
                      ),
                      Icon(
                        Icons.arrow_forward_ios_outlined,
                        size: 24,
                        color: Colors.grey.shade500,
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
