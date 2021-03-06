import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';

class ProductDetailScreen extends StatefulWidget {
  // final Product product;

  // ProductDetailScreen(this.product);

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context).settings.arguments as Product;

    return Scaffold(
      appBar: AppBar(
        title: Text(product.title),
      ),
    );
  }
}
