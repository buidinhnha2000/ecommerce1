import 'package:ecommerce/provider/item/item.dart';
import 'package:flutter/material.dart';

class PropertiesProductDetail extends StatelessWidget {
  const PropertiesProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
      padding: EdgeInsets.only(left: 10, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Properties Product",
            style: TextStyle(
                color: Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.w500),
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: listProduct.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: 20),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 1,
                          child: Text(
                            listProduct[index].gia,
                            style: TextStyle(color: Colors.white24),
                          )),
                      Expanded(
                          flex: 1,
                          child: Text(
                            listProduct[index].soluong,
                            style: TextStyle(color: Colors.white70),
                          )),
                    ],
                  ),
                );
              })
        ],
      ),
    );
  }
}
