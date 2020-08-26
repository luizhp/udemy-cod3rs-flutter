import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/providers/counter_provider.dart';

class ProductDetailScreen extends StatelessWidget {
  // final Product product;

  // ProductDetailScreen(this.product);

  @override
  Widget build(BuildContext context) {
    final Product product =
        ModalRoute.of(context).settings.arguments as Product;

    return Scaffold(
        appBar: AppBar(
          title: Text(product.title),
        ),
        body: Column(children: <Widget>[
          RaisedButton(
            child: Text('+'),
            onPressed: () {
              CounterProvider.of(context).state.inc();
              print(CounterProvider.of(context).state.value);
            },
          ),
          RaisedButton(
            child: Text('-'),
            onPressed: () {
              CounterProvider.of(context).state.dec();
              print(CounterProvider.of(context).state.value);
            },
          ),
        ]));
  }
}
