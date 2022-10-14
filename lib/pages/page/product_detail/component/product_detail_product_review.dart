import 'package:ecommerce/provider/item/item.dart';
import 'package:flutter/material.dart';

class ProductReviewProductDetail extends StatelessWidget {
  const ProductReviewProductDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.black45,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Đánh giá sản phẩm",
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "126 danh gia",
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    children: const [
                      Text(
                        "Xem them",
                        style: TextStyle(color: Colors.red, fontSize: 16),
                      ),
                      Icon(
                        Icons.navigate_next_rounded,
                        color: Colors.red,
                      )
                    ],
                  )),
            ],
          ),
          ListView.builder(
            padding: EdgeInsets.all(0),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: listProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(top: 10,),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                        flex: 1,
                        child: SizedBox(
                          height: 50,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(listProduct[index].img),
                          ),
                        )),
                    SizedBox(width: 10,),
                    Expanded(
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listProduct[index].soluong,
                              style: TextStyle(color: Colors.white54, fontSize: 20),
                            ),
                            Text(
                              listProduct[index].name,
                              style: TextStyle(color: Colors.white54, fontSize: 20),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(listProduct[index].img)
                                )
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
