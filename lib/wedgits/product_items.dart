import 'package:flutter/material.dart';
import 'package:shop_app/screens/products_detail_screen.dart';

class ProductItems extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItems({this.imageUrl, this.id, this.title});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: (){
            Navigator.of(context).pushNamed(ProductDetailScreen.rountName,arguments: id,);
          },
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
         
            icon: Icon(Icons.favorite, color: Theme.of(context).accentColor,),
          ),
          title: Text(title, textAlign: TextAlign.center,),
          trailing: IconButton(

            icon: Icon(Icons.shopping_cart, color: Theme.of(context).accentColor,),
          ),
        ),
      ),
    );
  }
}
