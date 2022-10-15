import 'package:flutter/material.dart';

import '../../../../widget/icon_back.dart';
import '../../../../widget/icon_funtion.dart';
import '../../../../widget/icon_popmenu.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconBack(color: Colors.white),
                      Text(
                        "Chat",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconFuntion(
                        color: Colors.white,
                        icon: Icons.shopping_cart_outlined,
                        onPress: () {},
                        notification: 2,
                      ),
                      PopupMenu(),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
