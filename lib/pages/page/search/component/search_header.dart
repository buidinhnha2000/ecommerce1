import 'package:flutter/material.dart';

import '../../../../widget/icon_back.dart';
import '../../../../widget/iconsearch.dart';

class SearchHeader extends StatefulWidget {
  const SearchHeader({Key? key}) : super(key: key);

  @override
  State<SearchHeader> createState() => _SearchHeaderState();
}

class _SearchHeaderState extends State<SearchHeader> {
  final sizeIcon = BoxConstraints(minWidth: 40, minHeight: 40);
  final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white54,
        width: 0,
      ),
      borderRadius: const BorderRadius.all(
        Radius.circular(4.0),
      ));
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
          padding: const EdgeInsets.only(right: 10, top: 10, bottom: 10),
          child: Row(
            children:  [
              IconBack(color: Colors.white70),
              // Note: Same code is applied for the TextFormField as well
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 20),
                    enabledBorder: border,
                    focusedBorder: border,
                    isDense: true,
                    hintText: "Searching",
                    hintStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    suffixIcon:
                    const Icon(Icons.mic_none, color: Colors.white70, size: 25),
                    suffixIconConstraints: sizeIcon,
                    filled: true,
                    fillColor: Colors.white10,
                  ),
                ),
              ),
            ],
          ),
      ),
    );
  }
}
