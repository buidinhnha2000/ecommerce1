import 'package:flutter/material.dart';

import '../pages/screen/home/home.dart';

class IconBack extends StatefulWidget {
  const IconBack({super.key, required this.color});

  final Color color;

  @override
  State<IconBack> createState() => _IconBackState();
}

class _IconBackState extends State<IconBack> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_outlined,
        color: widget.color,
        size: 28,
      ),
      onPressed: () {
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (context) => HomePage()));
      },
    );
  }
}
