import 'package:flutter/material.dart';

class Product {
  late final String image, title, description;
  late final int price, size, id;
  late final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image: 'assets/images/1.jpg',
      title: '1 product name',
      price: 125,
      description: 'description product name',
      size: 12,
      color: const Color(0xFF3D82AE)),
  Product(
      id: 2,
      image: 'assets/images/2.jpg',
      title: '2 product name',
      price: 150,
      description: 'description product name',
      size: 10,
      color: const Color(0xFF7193AC)),
  Product(
      id: 3,
      image: 'assets/images/3.jpg',
      title: '1 product name',
      price: 123,
      description: 'description product name',
      size: 12,
      color: const Color(0xFF3D82AE)),
  Product(
      id: 4,
      image: 'assets/images/4.jpg',
      title: '4 product name',
      price: 154,
      description: 'description product name',
      size: 10,
      color: const Color(0xFF7193AC)),
  Product(
      id: 5,
      image: 'assets/images/5.jpg',
      title: '1 product name',
      price: 125,
      description: 'description product name',
      size: 12,
      color: const Color(0xFF3D82AE)),
  Product(
      id: 6,
      image: 'assets/images/.jpg',
      title: '6 product name',
      price: 156,
      description: 'description product name',
      size: 10,
      color: const Color(0xFF7193AC)),
  Product(
      id: 7,
      image: 'assets/images/7.jpg',
      title: '77 product name',
      price: 125,
      description: 'description product name',
      size: 12,
      color: const Color(0xFF3D82AE)),
  Product(
      id: 8,
      image: 'assets/images/8.jpg',
      title: '8 product name',
      price: 158,
      description: 'description product name',
      size: 18,
      color: const Color(0xFF7193AC)),
];
