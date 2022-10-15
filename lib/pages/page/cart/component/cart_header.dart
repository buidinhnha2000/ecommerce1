
import 'package:ecommerce/widget/icon_back.dart';
import 'package:ecommerce/widget/popmenu.dart';

import 'package:flutter/material.dart';

import '../../../../widget/icon_funtion.dart';

class HeaderCart extends StatefulWidget {
  const HeaderCart({super.key});


  @override
  State<HeaderCart> createState() => _HeaderCartState();
}

class _HeaderCartState extends State<HeaderCart> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconBack(color: Colors.white),
                  Text("Cart", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                ],
              ),
              Row(
                children: [
                  IconFuntion(color: Colors.white,icon: Icons.chat, onPress: () {  }, notification: 2,),
                  PopupMenu(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}