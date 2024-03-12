import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final double price;
  final Color color;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.color,
  });
}

final List<Product> PRODUCTS = [
  Product(id: 0, name: 'Laptop', price: 999.99, color: Colors.black),
  Product(id: 1, name: 'Smartphone', price: 699.99, color: Colors.pink),
  Product(id: 2, name: 'Wireless Earbuds', price: 166.99, color: Colors.black),
  Product(id: 3, name: 'Smart Fridge', price: 269.99, color: Colors.grey),
  Product(id: 4, name: 'Smart TV', price: 356.99, color: Colors.black),
  Product(id: 5, name: 'Smart Watch', price: 456.99, color: Colors.blue),
  Product(id: 6, name: 'Air Fryer', price: 222.99, color: Colors.black),
  Product(id: 7, name: 'Microwave', price: 324.99, color: Colors.black),
  Product(id: 8, name: 'Washing Machine', price: 434.99, color: Colors.grey),
  Product(id: 9, name: 'Blender', price: 121.99, color: Colors.black)
];
