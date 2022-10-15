import 'package:ecommerce/pages/page/search/component/search_header.dart';
import 'package:ecommerce/pages/page/search/component/search_list.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SearchList(),
            SearchHeader(),
          ],
        ),
      ),
    );
  }
}
