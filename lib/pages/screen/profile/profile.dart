
import 'package:ecommerce/pages/screen/mall/component/small_header.dart';
import 'package:ecommerce/pages/screen/profile/component/profile_header.dart';
import 'package:flutter/material.dart';
import '../../../navigation/base_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
                    Column(
                      children: [
                        Container(height: 2000,)
                      ],
                    ),
                  ],
                ),
              ],
            ),
            HeaderProfile(_scrollController)
          ],
        ));
  }
}
