import 'package:ecommerce/pages/screen/home/component/home_banner.dart';
import 'package:ecommerce/pages/screen/mall/component/small_header.dart';
import 'package:ecommerce/pages/screen/mall/component/small_trademark.dart';
import 'package:flutter/material.dart';

import '../../../navigation/base_screen.dart';
import '../home/component/home_header.dart';
import '../home/component/home_product.dart';

class MallPage extends StatefulWidget {
  const MallPage({Key? key}) : super(key: key);

  @override
  State<MallPage> createState() => _MallPageState();
}

class _MallPageState extends State<MallPage> {
  final _scrollController = TrackingScrollController();

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      backgroundColor: Colors.black,
      body: getBody(),
    );
  }

  Widget getBody() {
    return Scaffold(
        body: Stack(
          children: [
            Stack(
              children: [
                ListView(
                  controller: _scrollController,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(0.0),
                  children: [
                    Stack(
                      children: [
                        Column(
                          children: [

                            Padding(padding: EdgeInsets.only(top: 80), child: BannerHome(),),
                            const SizedBox(
                              height: 20,
                            ),
                            SmallTrademark(),
                            SizedBox(height: 5,),
                            SmallTrademark(),
                            ProductHome(),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ],
            ),
            HeaderSmall(_scrollController),
          ],
        ));
  }
}
