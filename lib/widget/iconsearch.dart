import 'package:ecommerce/pages/page/search/component/search_header.dart';
import 'package:flutter/material.dart';

import '../pages/page/search/search.dart';

class IconSearch extends StatefulWidget {
  const IconSearch({required this.color});

  final Color color;

  @override
  State<IconSearch> createState() => _IconSearchState();
}

class _IconSearchState extends State<IconSearch> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildInputSearch(

      ),
    );
  }
  _buildInputSearch() {
    final sizeIcon = BoxConstraints(minWidth: 40, minHeight: 40);
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white54,
          width: 0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ));
    return Expanded(
      child: TextField(
        onTap: (){
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Search()));
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          enabledBorder: border,
          focusedBorder: border,
          isDense: true,
          hintText: "Searching",
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Colors.red,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white70,
            size: 25,
          ),
          prefixIconConstraints: sizeIcon,
          suffixIcon:
          const Icon(Icons.camera_alt, color: Colors.white70, size: 25),
          suffixIconConstraints: sizeIcon,
          filled: true,
          fillColor: widget.color,
        ),
      ),
    );
  }
}
