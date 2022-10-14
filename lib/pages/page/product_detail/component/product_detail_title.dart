import 'package:flutter/material.dart';

class TitleProductDetail extends StatelessWidget {
  const TitleProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      child: ListView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
        children: [
          Text("Ao hodi dahjs phong cach cu quan", style: TextStyle(color: Colors.white70, fontSize: 17),),
          SizedBox(height: 5,),
          Text("100.000", style: TextStyle(color: Colors.red, fontSize: 20),),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text("Da ban", style: TextStyle(color: Colors.white70, fontSize: 17),),
                  SizedBox(width: 3,),
                  Text("300", style: TextStyle(color: Colors.red, fontSize: 17),),
                ],
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border_outlined, size: 30,),),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.share, size: 30),),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.message_outlined, color: Colors.lightBlue, size: 30))
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
