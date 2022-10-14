import 'package:flutter/material.dart';

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
          color: Colors.transparent,
          width: 0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ));
    return Expanded(
      child: TextField(
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
