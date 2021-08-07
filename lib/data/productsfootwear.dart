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
  Product("images/shoe1.jpg", "dummyText", "fancy black", 23, 12, 5500,
      Color(0xFF3D82AE)),
  Product("images/shoe2.jpg", "dummyText", "white sneakers", 13, 12, 6500,
      Color(0xFF3D82AE)),
  Product(
      "images/shoe3.jpg", "dummyText", "pink", 27, 12, 2000, Color(0xFF3D82AE)),
  Product("images/shoe4.jpg", "dummyText", "purple", 28, 12, 3000,
      Color(0xFF3D82AE)),
  Product("images/shoe5.jpg", "dummyText", "white feather", 17, 12, 5000,
      Color(0xFF3D82AE)),
  Product("images/shoe6.jpg", "dummyText", "black ", 30, 12, 6000,
      Color(0xFF3D82AE)),
  Product("images/shoe7.jpg", "dummyText", "blurr blue", 31, 12, 5000,
      Color(0xFF3D82AE)),
  Product("images/shoe8.jpg", "dummyText", "black blue", 9, 12, 3000,
      Color(0xFF3D82AE)),
];
