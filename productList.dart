import 'package:flutter/material.dart';
//kategoriden tıkladığında açılacak sayfa
class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Product List",
        style: TextStyle(color: Colors.black),
      )),
    );
  }
}