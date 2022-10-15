import 'package:ecommerce/pages/page/cart/component/cart_header.dart';
import 'package:ecommerce/pages/page/cart/component/cart_product.dart';
import 'package:flutter/material.dart';

import 'component/BottomCart.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0.0),
            children: [
                CartProduct(),
            ],
          ),
          HeaderCart(),
        ],
      ),
      bottomNavigationBar: BottomCart(),
    );
  }
}
