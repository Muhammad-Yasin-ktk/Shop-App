import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const rountName='/productdeatilscreen';
  @override
  Widget build(BuildContext context) {
    final productId=ModalRoute.of(context).settings.arguments as String;
    final productData=Provider.of<Products>(context);
    final loadProducts=productData.findbyId(productId);
    return Scaffold(
      appBar: AppBar(
title: Text(loadProducts.title),
      ),
    );
  }
}
