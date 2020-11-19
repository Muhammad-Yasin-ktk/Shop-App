import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/products.dart';
import 'package:shop_app/screens/product_overview_screen.dart';
import 'package:shop_app/screens/products_detail_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx)=>Products(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange
        ),

        debugShowCheckedModeBanner: false,
        home: ProductOverView(),

        routes: {
          ProductDetailScreen.rountName:(ctx)=>ProductDetailScreen(),
        },
      ),
    );

  }

}
