import 'package:chats/screens/home/chats/chat_detail.dart';
import 'package:flutter/foundation.dart';

class ChatMessage {
  String message;
  MessageType type;
  ChatMessage({@required this.message, @required this.type});
}
