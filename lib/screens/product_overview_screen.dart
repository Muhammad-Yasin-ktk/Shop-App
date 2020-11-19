import 'package:flutter/material.dart';
import 'package:shop_app/provider/product.dart';
import 'package:shop_app/wedgits/product_grid.dart';
import 'package:shop_app/wedgits/product_items.dart';

class ProductOverView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Myshop'),
      ),
      body: ProductGrid(),
    );
  }
}
