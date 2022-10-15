import 'package:flutter/material.dart';

class ChatSearch extends StatelessWidget {
  const ChatSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sizeIcon = BoxConstraints(minWidth: 40, minHeight: 40);
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Colors.white54,
          width: 0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(4.0),
        ));

    return Container(
      color: Colors.black,
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(4),
          enabledBorder: border,
          focusedBorder: border,
          isDense: true,
          hintText: "Searching chat ...",
          hintStyle: const TextStyle(
            fontSize: 16,
            color: Colors.white54,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.white70,
            size: 25,
          ),
          prefixIconConstraints: sizeIcon,
          suffixIcon:
          const Icon(Icons.mic, color: Colors.white70, size: 25),
          suffixIconConstraints: sizeIcon,
          filled: true,
          fillColor: Colors.black,
        ),
      ),
    );
  }
}
