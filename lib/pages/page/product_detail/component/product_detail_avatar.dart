
import 'package:flutter/material.dart';

class AvatarProductDetail extends StatelessWidget {
  const AvatarProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      height: 400,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/image4.jpg"), fit: BoxFit.fill)),
    );
  }
}
