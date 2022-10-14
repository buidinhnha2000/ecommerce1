import 'package:flutter/material.dart';

const List<CategoriItem> listCategori = [
  CategoriItem(Icons.ac_unit, "Time break", ),
  CategoriItem(Icons.access_alarm_outlined, "noiesy"),
  CategoriItem(Icons.agriculture_outlined, "FreeShip"),
  CategoriItem(Icons.toys, "ShpeeFood"),
  CategoriItem(Icons.menu_sharp, "Time break"),

];
class CategoriItem {
  final String text;
  final IconData icon;

  const CategoriItem(this.icon, this.text);
}

const List<Product> listProduct = [
  Product('assets/images/image1.jpg', '0','Ao so mi ngan ngang vai 1', "100"),
  Product('assets/images/image2.jpg', '25.000','Ao so mi ngan ngang vai 2', "200"),
  Product('assets/images/image3.jpg', '180.000','Ao so mi ngan ngang vai ', "300"),
  Product('assets/images/image4.jpg', '100.000','Ao so mi ngan ngang vai', "400"),
  Product('assets/images/image1.jpg', '100.000','Ao so mi ngan ngang vai', "500"),
  Product('assets/images/image2.jpg', '100.000','Ao so mi ngan ngang vai', "600"),
  Product('assets/images/image3.jpg', '100.000','Ao so mi ngan ngang vai', "700"),
  Product('assets/images/image4.jpg', '100.000','Ao so mi ngan ngang vai', "800"),
];

class Product {
  final String img;
  final String gia;
  final String name;
  final String soluong;

  const Product(this.img, this.gia, this.name, this.soluong);
}