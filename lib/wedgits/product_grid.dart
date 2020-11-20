import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/wedgits/product_items.dart';

class ProductGrid extends StatelessWidget {
  final bool _showFavoriteValue;
  ProductGrid(this._showFavoriteValue);

  @override
  Widget build(BuildContext context) {
    final productsData=Provider.of<Products>(context,listen: false);
    final products=_showFavoriteValue?productsData.favoriteItem:productsData.items;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        padding: EdgeInsets.all(20),
        itemBuilder: (context, i) =>ChangeNotifierProvider.value(
          value: products[i],
          child: ProductItems(),
        ),
        );
  }
}
