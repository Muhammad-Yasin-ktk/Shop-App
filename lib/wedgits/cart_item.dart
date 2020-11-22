import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/provider/cart.dart';

class CartItem extends StatelessWidget {
  final String id;

  final String title;
  final double price;
  final int quantity;
  final String productId;


  const CartItem({this.id, this.title,
    this.price, this.quantity, this.productId,})

  ;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      background: Container(
        color: Colors.red,
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
     padding:EdgeInsets.only(right: 20),
        alignment: Alignment.centerRight,
        child: Icon(Icons.delete,color: Colors.white,size: 40,),
      ),
      onDismissed: (value){
Provider.of<Cart>(context,listen: false).removeCart(productId);
      },
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: ListTile(
          leading: CircleAvatar(
            child: FittedBox(
                child:
                    Padding(padding: EdgeInsets.all(5), child: Text('\$${price}'))),
          ),
          title: Text(
            title,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          subtitle: Text('Total : \$${price*quantity}'),
          trailing: Text('${quantity} x'),
        ),
      ),
    );
  }
}
