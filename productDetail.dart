import 'package:flutter/material.dart';
//ürüne tıkladığındaki hali
class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Product Detail",
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}
