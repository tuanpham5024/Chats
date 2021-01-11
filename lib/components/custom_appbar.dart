import 'package:chats/config/constants.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key key, this.text, this.icon,
  }) : super(key: key);
  final String text;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text
              ,
              style: TextStyle(
                  fontSize: 20,
                  color: kTextPrimary,
                  fontWeight: FontWeight.bold),
            ),
            Container(
              width: 35,
              child: Image.asset(icon),
            )
          ],
        ),
      ),
    );
  }
}
