import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/widgets/product_grid.dart';
import 'package:shop/providers/products.dart';

enum FilterOptions { Favorite, All }

class ProductsOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Products products = Provider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text('Minha Loja'), actions: <Widget>[
        PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              if (selectedValue == FilterOptions.Favorite) {
                products.showFavoriteOnly();
              } else if (selectedValue == FilterOptions.All) {
                products.showAll();
              }
              print(selectedValue);
            },
            icon: Icon(Icons.more_vert),
            itemBuilder: (_) => [
                  PopupMenuItem(
                    child: Text('Somente Favoritos'),
                    value: FilterOptions.Favorite,
                  ),
                  PopupMenuItem(
                    child: Text('Todos'),
                    value: FilterOptions.All,
                  ),
                ])
      ]),
      body: ProductGrid(),
    );
  }
}
