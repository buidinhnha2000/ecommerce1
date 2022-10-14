
import 'package:ecommerce/pages/screen/home/component/home_banner.dart';
import 'package:ecommerce/pages/screen/home/component/home_categori.dart';
import 'package:ecommerce/pages/screen/home/component/home_header.dart';
import 'package:ecommerce/pages/screen/home/component/home_product.dart';
import 'package:ecommerce/pages/screen/home/component/home_sale.dart';
import 'package:flutter/material.dart';

import '../../../navigation/base_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                            BannerHome(),
                            Container(
                              height: 55,
                              color: Colors.lightBlueAccent,
                            ),
                            Container(
                              height: 100,
                              color: Colors.lightBlue,
                              child: const CategoriHome(),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const SaleHome(),
                            ProductHome(),
                          ],
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 20, right: 20, top: 200),
                          child: Container(
                              height: 60,
                              decoration: BoxDecoration(
                                  color: Colors.black87,
                                  borderRadius: BorderRadius.circular(3)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(
                                      flex: 1,
                                      child: Icon(
                                        Icons.qr_code,
                                        size: 25,
                                        color: Colors.white60,
                                      )),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2, bottom: 2, right: 5, left: 5),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.schedule,
                                                color: Colors.redAccent,
                                                size: 20,
                                              ),
                                              Text(
                                                " Bui Dinh Nha",
                                                style: TextStyle(fontSize: 15),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          const Text(
                                            "Giam 100K cho 100 don hang dau tien",
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2, bottom: 2, right: 5, left: 5),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: const [
                                              Icon(
                                                Icons.schedule,
                                                color: Colors.yellow,
                                                size: 20,
                                              ),
                                              Text(
                                                " Suppermen",
                                                style: TextStyle(fontSize: 15),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          const Text(
                                            "Giam 100K cho 100 don hang dau tien",
                                            style: TextStyle(
                                                color: Colors.white54,
                                                fontSize: 12),
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            HeaderHome(_scrollController),
          ],
    ));
  }
}
