import 'package:delivery_app/Customer/widget/conversation.dart';
import 'package:delivery_app/Customer/widget/user_model.dart';
import 'package:flutter/material.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({Key? key, required this.user}) : super(key: key);

  @override
  _ChatRoomState createState() => _ChatRoomState();
  final User user;
}

class _ChatRoomState extends State<ChatRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.redAccent,
            )),
        title: Text(
          'Jenny Willsom',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.phone,
                  color: Colors.redAccent,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.video_call_outlined,
                  color: Colors.redAccent,
                  // size: 15,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                // margin: EdgeInsets.symmetric(horizontal: 10),
                width: 50,
                height: 35,
                decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Icon(
                  Icons.more_vert_sharp,
                  color: Colors.redAccent,
                  // size: 15,
                )),
          )
        ],
      ),
      backgroundColor: Colors.white,
      // body: GestureDetector(
      //   onTap: () {
      //     FocusScope.of(context).unfocus();
      //   },
      body: Column(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Conversation(user: widget.user),
              ),
            ),
          ),
          // buildChatComposer()
        ],
      ),
    );
  }
}
