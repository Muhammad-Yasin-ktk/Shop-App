import 'dart:ffi';

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
      body: Column(children: [
        Container(
         
          height: 300,
          width: double.infinity,
          child: Image.network(loadProducts.imageUrl,
          fit: BoxFit.cover,),
        ),
        SizedBox(height: 15,),
        Text('\$${loadProducts.price}',style: TextStyle(
          fontSize: 20
        ),),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          alignment: Alignment.center,
          child: Text('${loadProducts.description}',style: TextStyle(
            fontSize: 16,color: Colors.black,
          ),softWrap: true,),
        )
      ],),
    );
  }
}
