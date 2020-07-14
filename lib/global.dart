//Here i just added some products to bag and i displayed it in the checkout cart
//bag is list of product datatype

import 'package:flutter/material.dart';


Color bgColor = Color(0xfff5f5f5);

class Categories {
  final String title;
  final int id;
  final List<SubCategories> subCat;

  Categories({this.title, this.id, this.subCat});
}

class SubCategories {
  final String title;
  final int id;

  SubCategories({this.title, this.id});
}

class Product {
  final String mainImage;
  final List<Color> colors;
  final String title;
  final String price;
  final double rating;

  Product({
    this.rating,
    this.price,
    this.mainImage,
    this.colors,
    this.title,
  });
}

List<Product> bag = [
  Product(
      title: "Cabbage",
      price: "INR 40.0",
      colors: [Colors.black, Colors.red, Colors.yellow],
      mainImage:
      'images/cabbage.jpg',
     ),
  Product(
      title: "Apple",
      price: "INR 30.0",
      colors: [Colors.black, Colors.red, Colors.yellow],
      mainImage:
      'images/apple.jpg',
      ),
];