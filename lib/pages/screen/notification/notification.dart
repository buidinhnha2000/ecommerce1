
import 'package:ecommerce/pages/screen/mall/component/small_header.dart';
import 'package:flutter/material.dart';
import '../../../navigation/base_screen.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
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
