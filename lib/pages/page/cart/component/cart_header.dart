
import 'package:ecommerce/widget/icon_back.dart';

import 'package:flutter/material.dart';

import '../../../../widget/icon_funtion.dart';

class HeaderCart extends StatefulWidget {
  const HeaderCart(this.scrollController, {super.key});

  final TrackingScrollController scrollController;

  @override
  State<HeaderCart> createState() => _HeaderCartState();
}

class _HeaderCartState extends State<HeaderCart> {
  late Color _backgroundColor;
  late Color _colorIcon;
  late double _opacity;
  late double _offset;

  final _opacityMax = 0.01;

  @override
  void initState() {
    _backgroundColor = Colors.transparent;
    _colorIcon = Colors.white;
    _opacity = 0.0;
    _offset = 0.0;
    widget.scrollController.addListener(_onscroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: _backgroundColor,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconBack(color: _colorIcon),
                  Text("Cart", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),),
                ],
              ),
              IconFuntion(color: _colorIcon,icon: Icons.chat, onPress: () {  }, notification: 2,),
            ],
          ),
        ),
      ),
    );
  }

  void _onscroll() {
    final scrollOffset = widget.scrollController.offset;
    if (scrollOffset >= _offset && scrollOffset > 5) {
      _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));
      if (_opacity >= 1.0) {
        _opacity = 1.0;
      }
    } else if (scrollOffset < 100) {
      _opacity = double.parse((_opacity - _opacityMax).toStringAsFixed(2));
      if (_opacity <= 1.0) {
        _opacity = 0.0;
      }
    }

    setState(() {
      if (scrollOffset <= 0) {
        _colorIcon = Colors.white;
        _opacity = 0.0;
        _offset = 0.0;
      } else {
        _colorIcon = Colors.deepOrange;
      }
      _backgroundColor = Colors.black87.withOpacity(_opacity);
    });
  }
}