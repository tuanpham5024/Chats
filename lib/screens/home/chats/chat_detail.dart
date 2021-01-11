import 'package:chats/components/chat_bubble.dart';
import 'package:chats/components/chat_detail_appbar.dart';
import 'package:chats/config/size_config.dart';
import 'package:chats/models/chat_message.dart';
import 'package:chats/models/send_menu_items.dart';
import 'package:flutter/material.dart';

enum MessageType {
  Sender,
  Receiver,
}

class ChatDetail extends StatefulWidget {
  static const String routName = "chat_detail";

  @override
  _ChatDetailState createState() => _ChatDetailState();
}

class _ChatDetailState extends State<ChatDetail> {
  List<ChatMessage> chatMessage = [
    ChatMessage(message: "Hí anh em", type: MessageType.Receiver),
    ChatMessage(
        message: "Hôm qua anh không live stream à ? ",
        type: MessageType.Sender),
    ChatMessage(
        message:
            "Sorry anh em , hôm qua tôi đi đá bóng bị ngã trẹo chân nên không thể live stream cho anh em coi được",
        type: MessageType.Receiver),
    ChatMessage(message: "Lươn Thanh Độ", type: MessageType.Sender),
    ChatMessage(message: ":(((((", type: MessageType.Receiver),
  ];

  List<SendMenuItems> menuItems = [
    SendMenuItems(text: "Ảnh & Videos", icon: Icons.image, color: Colors.amber),
    SendMenuItems(text: "Tài liệu", icon: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(text: "Âm thanh", icon: Icons.music_note, color: Colors.orange),
    SendMenuItems(text: "Vị trí", icon: Icons.location_on, color: Colors.green),
    SendMenuItems(text: "Liên hệ", icon: Icons.person, color: Colors.purple),
  ];

  void showModal() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: MediaQuery.of(context).size.height/2,
            color: Color(0xFF237373),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              ),
              child: Column(
                children: <Widget>[
                  SizedBox(height: getProportionateScreenHeight(10),),
                  Center(
                    child: Container(
                      height: getProportionateScreenHeight(4),
                      width: getProportionateScreenHeight(58),
                      color: Colors.grey.shade200,
                    ),
                  ),
                  SizedBox(height: getProportionateScreenHeight(16)),
                  ListView.builder(
                    itemCount: menuItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(top: 10, bottom: 10),
                        child: ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: menuItems[index].color.shade100,
                            ),
                            height: getProportionateScreenHeight(40),
                            width: getProportionateScreenHeight(40),
                            child: Icon(menuItems[index].icons, size: 20, color: menuItems[index].color.shade400,),
                          ),
                          title: Text(menuItems[index].text),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ChatDetailAppBar(),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount: chatMessage.length,
            shrinkWrap: true,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return ChatBubble(chatMessage: chatMessage[index]);
            },
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: getProportionateScreenHeight(80),
              width: double.infinity,
              color: Colors.white,
              child: GestureDetector(
                onTap: () {
                  showModal();
                },
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 16, bottom: 10),
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            borderRadius: BorderRadius.circular(30)),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 21,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Nhập tin nhắn...",
                            hintStyle: TextStyle(color: Colors.grey.shade500),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: EdgeInsets.only(right: 30, bottom: 50),
              child: FloatingActionButton(
                onPressed: () {},
                child: Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                backgroundColor: Colors.pink,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
