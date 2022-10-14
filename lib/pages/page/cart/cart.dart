import 'package:ecommerce/pages/page/cart/component/cart_header.dart';
import 'package:flutter/material.dart';

import 'component/BottomCart.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final _scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            controller: _scrollController,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0.0),
            children: [
                Container(height: 10,)
            ],
          ),
          HeaderCart(_scrollController),
        ],
      ),
      bottomNavigationBar: BottomCart(),
    );
  }
}
