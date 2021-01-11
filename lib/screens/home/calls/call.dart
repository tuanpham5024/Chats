import 'package:chats/config/constants.dart';
import 'package:chats/screens/home/calls/call_screen.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CallUsersList extends StatefulWidget {
  String text;
  String image;
  String time;
  CallType type;

  CallUsersList(
      {@required this.text, @required this.image, @required this.time, @required this.type});

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
                      Text(widget.text, style: TextStyle(fontWeight: FontWeight.bold, color: kTextPrimary),),
                      SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            child: Icon(
                              // ignore: unrelated_type_equality_checks
                              widget.type == "IncomingCall" ? Icons.call_made : Icons.call_received, size: 16,
                            ),
                          ),
                          SizedBox(width: 12,),
                          Text(
                            widget.time,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade500),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Icon(Icons.phone, color: kPrimaryColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
