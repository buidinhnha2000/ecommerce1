
import 'package:flutter/material.dart';

import '../../../../widget/icon_funtion.dart';
import '../../../../widget/iconsearch.dart';
import '../../../page/cart/cart.dart';

class HeaderSmall extends StatefulWidget {
  const HeaderSmall(this.scrollController);
  final TrackingScrollController scrollController;

  @override
  State<HeaderSmall> createState() => _HeaderSmallState();
}

class _HeaderSmallState extends State<HeaderSmall> {

  late Color _backgroundColor;
  late Color _backgroundColorSearch;
  late Color _colorIcon;
  late double _opacity;
  late double _offset;

  final _opacityMax = 0.01;

  @override
  void initState() {
    _backgroundColor = Colors.transparent;
    _backgroundColorSearch = Colors.black87;
    _colorIcon = Colors.white;
    _opacity = 0.0;
    _offset = 0.0;

    widget.scrollController.addListener(_onscroll);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all( 10),
          child: Row(
            children: [
              IconSearch(color: _backgroundColorSearch),
              IconFuntion(color: _colorIcon,icon: Icons.shopping_cart_outlined, onPress: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Cart()));
              }, notification: 20,),
              IconFuntion(color: _colorIcon,icon: Icons.chat, onPress: () {  }, notification: 15,),
            ],
          ),
        ),
      ),
    );
  }

  void _onscroll (){
    final scrollOffset = widget.scrollController.offset;
    if(scrollOffset >= _offset && scrollOffset > 5) {
      _opacity = double.parse((_opacity + _opacityMax).toStringAsFixed(2));
      if(_opacity >= 1.0) {
        _opacity = 1.0;
      }
    }else if(scrollOffset < 100) {
      _opacity = double.parse((_opacity - _opacityMax).toStringAsFixed(2));
      if(_opacity <= 1.0) {
        _opacity = 0.0;
      }
    }

    setState(() {
      if(scrollOffset <= 0) {
        _backgroundColorSearch = Colors.black54;
        _colorIcon = Colors.white;
        _opacity = 0.0;
        _offset = 0.0;
      }else{
        _backgroundColorSearch = Colors.white24;
        _colorIcon = Colors.deepOrange;
      }
      _backgroundColor = Colors.black87.withOpacity(_opacity);
    });
  }
}

