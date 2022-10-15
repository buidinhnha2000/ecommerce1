import 'package:ecommerce/pages/page/chat/component/chat_header.dart';
import 'package:ecommerce/pages/page/chat/component/chat_list.dart';
import 'package:ecommerce/pages/page/chat/component/chat_search.dart';
import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0.0),
            children: [
              ChatList(),
            ],
          ),
          Column(
            children: [
              ChatHeader(),
              ChatSearch()
            ],
          )
        ],
      ),
    );
  }
}
