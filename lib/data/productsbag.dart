import 'package:flutter/material.dart';

class Product {
  final String image, description, title;
  final int id, size;
  final int cost;
  final Color color;

  Product(this.image, this.description, this.title, this.id, this.size,
      this.cost, this.color);
}

List<Product> product = [
  Product("images/p1.jpg", "dummyText", "grey green", 18, 12, 4000,
      Color(0xFF3D82AE)),
  Product("images/p2.jpg", "dummyText", "black love", 1, 12, 3000,
      Color(0xFF3D82AE)),
  Product(
      "images/p3.jpg", "dummyText", "floral", 20, 12, 9000, Color(0xFF3D82AE)),
  Product("images/p4.jpg", "dummyText", "pink place", 21, 12, 7000,
      Color(0xFF3D82AE)),
  Product("images/p5.jpg", "dummyText", "office brown", 22, 12, 5000,
      Color(0xFF3D82AE)),
];
