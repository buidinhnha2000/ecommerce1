import 'package:ecommerce/pages/page/product_detail/component/product_detail_avatar.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_bottom.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_header.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_other_%20product.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_product_review.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_properties.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_title.dart';
import 'package:ecommerce/pages/page/product_detail/component/product_detail_user.dart';
import 'package:ecommerce/pages/screen/home/component/home_product.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
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
              const AvatarProductDetail(),
              const TitleProductDetail(),
              const SizedBox(height: 5,),
              const UserProductDetail(),
              const SizedBox(height: 5,),
              const ProductOtherProductDetail(),
              const SizedBox(height: 5,),
              const PropertiesProductDetail(),
              SizedBox(height: 5,),
              const ProductReviewProductDetail(),
              SizedBox(height: 5,),
              const ProductHome(),
              SizedBox(height: 40,)
            ],
          ),
          HeaderProductDetail(_scrollController),
        ],
      ),
      bottomNavigationBar: BottomProductDetail(),
    );
  }
}
