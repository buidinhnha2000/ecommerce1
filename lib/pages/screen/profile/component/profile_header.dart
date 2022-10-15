
import 'package:flutter/material.dart';

import '../../../../widget/icon_funtion.dart';
import '../../../page/cart/cart.dart';

class HeaderProfile extends StatefulWidget {
  const HeaderProfile(this.scrollController);
  final TrackingScrollController scrollController;

  @override
  State<HeaderProfile> createState() => _HeaderProfileState();
}

class _HeaderProfileState extends State<HeaderProfile> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.cyan[800],
      height: 180,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all( 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.settings_outlined, size: 28,),
                  IconFuntion(color: Colors.white,icon: Icons.shopping_cart_outlined, onPress: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Cart()));
                  }, notification: 20,),
                  IconFuntion(color: Colors.white,icon: Icons.chat, onPress: () {  }, notification: 15,),
                ],
              ),
              Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image4.jpg'),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("buinha", style: TextStyle(color: Colors.white70, fontSize: 25, fontWeight: FontWeight.w600),),
                      SizedBox(height: 5,),
                      Text("Thanh vien",style: TextStyle(color: Colors.white38),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Text("Follow",style: TextStyle(color: Colors.white54),),
                          SizedBox(width: 5,),
                          Text("40",style: TextStyle(color: Colors.deepOrange),),
                          SizedBox(width: 30,),
                          Text("Dang Follow",style: TextStyle(color: Colors.white54),),
                          SizedBox(width: 5,),
                          Text("100",style: TextStyle(color: Colors.deepOrange),),
                        ],
                      )
                    ],
                  )
                ],
              )
            ],
          )
        ),
      ),
    );
  }

}

