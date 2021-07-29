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
  Product("images/e1.jpg", "dummyText", "fancy black", 2, 12, 5500,
      Color(0xFF3D82AE)),
  Product("images/e2.jpg", "dummyText", "white sneakers", 7, 12, 6500,
      Color(0xFF3D82AE)),
  Product(
      "images/e3.jpg", "dummyText", "pink", 10, 12, 2000, Color(0xFF3D82AE)),
  Product(
      "images/e4.jpg", "dummyText", "purple", 16, 12, 3000, Color(0xFF3D82AE)),
  Product("images/e5.jpg", "dummyText", "white feather", 19, 12, 5000,
      Color(0xFF3D82AE)),
  Product(
      "images/e6.jpg", "dummyText", "black ", 24, 12, 6000, Color(0xFF3D82AE)),
  Product("images/e7.jpg", "dummyText", "blurr blue", 29, 12, 5000,
      Color(0xFF3D82AE)),
  Product("images/e8.jpg", "dummyText", "black blue", 32, 12, 3000,
      Color(0xFF3D82AE)),
];
