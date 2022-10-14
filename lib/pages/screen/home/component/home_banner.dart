import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerHome extends StatelessWidget {

  final List<String> _imgBanner = [
    "assets/images/banner1.webp",
    "assets/images/banner2.webp",
    "assets/images/banner3.webp",
    "assets/images/banner4.webp",
    "assets/images/banner1.jpg",
    "assets/images/banner2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 1.873,
            viewportFraction: 1.0,
            autoPlay: true,
          ),
          items: _imgBanner.map((item) => Image.asset(
            item,
            fit: BoxFit.cover,
            width: size.width,

          )).toList(),
      ),
    );
  }
}

