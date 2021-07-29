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
  Product("images/c1.jpg", "dummyText", "fancy black", 33, 12, 5500,
      Color(0xFF3D82AE)),
  Product("images/c2.jpg", "dummyText", "white sneakers", 12, 12, 6500,
      Color(0xFF3D82AE)),
  Product("images/c3.jpg", "dummyText", "pink", 0, 12, 2000, Color(0xFF3D82AE)),
  Product(
      "images/c4.jpg", "dummyText", "purple", 25, 12, 3000, Color(0xFF3D82AE)),
  Product("images/c5.jpg", "dummyText", "white feather", 26, 12, 5000,
      Color(0xFF3D82AE)),
  Product(
      "images/c6.jpg", "dummyText", "black ", 3, 12, 6000, Color(0xFF3D82AE)),
  Product("images/c7.jpg", "dummyText", "blurr blue", 4, 12, 5000,
      Color(0xFF3D82AE)),
  Product("images/c8.jpg", "dummyText", "black blue", 5, 12, 3000,
      Color(0xFF3D82AE)),
  Product("images/c9.jpg", "dummyText", "black blue", 6, 12, 3000,
      Color(0xFF3D82AE)),
  Product("images/c10.jpg", "dummyText", "black blue", 9, 12, 3000,
      Color(0xFF3D82AE)),
  Product("images/c11.jpg", "dummyText", "black blue", 11, 12, 3000,
      Color(0xFF3D82AE)),
  Product("images/c12.jpg", "dummyText", "black blue", 14, 12, 3000,
      Color(0xFF3D82AE)),
  Product("images/c13.jpg", "dummyText", "black blue", 15, 12, 3000,
      Color(0xFF3D82AE)),
];
