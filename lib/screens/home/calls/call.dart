import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CallUsersList extends StatefulWidget {
  String text;
  String image;
  String time;

  CallUsersList(
      {@required this.text, @required this.image, @required this.time});

  @override
  _CallUsersListState createState() => _CallUsersListState();
}

class _CallUsersListState extends State<CallUsersList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(widget.image),
                  maxRadius: 30,
                ),
                SizedBox(
                  width: 16,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(widget.text),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                        widget.time,
                        style: TextStyle(
                            fontSize: 14, color: Colors.grey.shade500),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
