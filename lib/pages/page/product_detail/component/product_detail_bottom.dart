import 'package:flutter/material.dart';

class BottomProductDetail extends StatelessWidget {
  const BottomProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 60,
                color: Colors.green[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.chat),
                    Text("Chat Now",style: TextStyle(color: Colors.white70))
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 60,
                color: Colors.green[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_outlined),
                    Text("Add Cart",style: TextStyle(color: Colors.white70))
                  ],
                ),
              ),),
            Expanded(
                flex: 2,
                child: Container(
                    height: 60,
                    color: Colors.deepOrange[600],
                    child: Center(
                      child: Text('Mua hang', style: TextStyle(fontSize: 20),),
                    )
                ))
          ],
        ),
      ),
    );
  }
}
