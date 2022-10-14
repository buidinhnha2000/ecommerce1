import 'package:flutter/material.dart';

class UserProductDetail extends StatefulWidget {
  const UserProductDetail({Key? key}) : super(key: key);

  @override
  State<UserProductDetail> createState() => _UserProductDetailState();
}

class _UserProductDetailState extends State<UserProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 10, right: 10),
      height: 110,
      color: Colors.black45,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image2.jpg'),
                    ),
                    height: 60,
                  )),
              SizedBox(width: 5,),
              Expanded(
                  flex: 6,
                  child: Container(
                    height: 60,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("buinha", style: TextStyle(color: Colors.white70, fontSize: 20),),
                        SizedBox(height: 5,),
                        Text("Online 23 min",style: TextStyle(color: Colors.white38),),
                        Text("Da Nang",style: TextStyle(color: Colors.white38),),
                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text("Xem Shop", style: TextStyle(fontSize: 15, color: Colors.deepOrange),),
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(width: 1.0, color: Colors.red),
                    ),
                  )),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: const [
              Text("20", style: TextStyle(color: Colors.red),),
              SizedBox(width: 3,),
              Text("San pham", style: TextStyle(color: Colors.white54),),
              SizedBox(width: 10,),
              Text("4", style: TextStyle(color: Colors.red),),
              SizedBox(width: 3,),
              Text("Danh gia", style: TextStyle(color: Colors.white54),),
              SizedBox(width: 10,),
              Text("10%", style: TextStyle(color: Colors.red),),
              SizedBox(width: 3,),
              Text("Phan hoi chat", style: TextStyle(color: Colors.white54),),
              SizedBox(width: 10,)
            ],
          )
        ],
      ),
    );
  }
}
