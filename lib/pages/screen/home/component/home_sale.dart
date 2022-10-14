import 'package:ecommerce/provider/item/item.dart';
import 'package:flutter/material.dart';

import '../../../page/cart/cart.dart';

class SaleHome extends StatefulWidget {
  const SaleHome({Key? key}) : super(key: key);

  @override
  State<SaleHome> createState() => _SaleHomeState();
}

class _SaleHomeState extends State<SaleHome> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.pink[50]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 15,
                  ),
                  child: Text(
                    "DONG GIA 0 USD",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
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
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.blueGrey[900]),
                height: 190,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listProduct.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => Cart()));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                          top: 10,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 150,
                              width: 100,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(listProduct[index].img),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              listProduct[index].gia,
                              style: const TextStyle(color: Colors.pink),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}
