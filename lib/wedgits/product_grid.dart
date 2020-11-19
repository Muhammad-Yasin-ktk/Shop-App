import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/wedgits/product_items.dart';

class ProductGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData=Provider.of<Products>(context);
    final products=productsData.items;
    return GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            crossAxisCount: 2),
        padding: EdgeInsets.all(20),
        itemBuilder: (context, i) =>ChangeNotifierProvider(
          create: (context)=>products[i],
          child: ProductItems(
            // imageUrl: products[i].imageUrl,
            // id: products[i].id,
            // title: products[i].title,
          ),
        ),
        );
  }
}
