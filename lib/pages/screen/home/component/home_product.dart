import 'package:ecommerce/pages/page/product_detail/product_detail.dart';
import 'package:flutter/material.dart';

import '../../../../provider/item/item.dart';


class ProductHome extends StatelessWidget {
  const ProductHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    routeProductDetail(){
      Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) => ProductDetail()
      ));
    }

    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.all(0),
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 5, bottom: 10),
            child: Text(
              "SAN PHAM NOI BAT",
              style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
          ),
          GridView.builder(
            padding: EdgeInsets.all(0),
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                mainAxisExtent: 250,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: listProduct.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () => routeProductDetail(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(listProduct[index].img),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    const SizedBox(height: 5,),
                    Text(listProduct[index].name, style: const TextStyle(color: Colors.white),),
                    const SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(listProduct[index].gia, style: const TextStyle(color: Colors.red),),
                        Text( "Da ban ${listProduct[index].soluong}", style: const TextStyle(color: Colors.white54),)
                      ],
                    )
                  ],
                ),
              );
            },
          ),
        ],
      )
    );
  }
}
