import 'package:ecommerce/pages/screen/home/component/home_banner.dart';
import 'package:ecommerce/pages/screen/mall/component/small_header.dart';
import 'package:ecommerce/pages/screen/mall/component/small_trademark.dart';
import 'package:flutter/material.dart';

import '../../../navigation/base_screen.dart';
import '../home/component/home_product.dart';

class LivePage extends StatefulWidget {
  const LivePage({Key? key}) : super(key: key);

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
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
