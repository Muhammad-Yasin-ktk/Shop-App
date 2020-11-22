import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shop_app/provider/cart.dart';

class OrderItem{
  final String id;
  final double amount;
  final DateTime dateTime;
  final List<CartItem> products;
  OrderItem({this.id,this.amount,this.products,this.dateTime});

}

class Orders with ChangeNotifier{
  List<OrderItem> _orders=[];

  List<OrderItem> get orders{
    return [..._orders];
  }
void addOrder(List<CartItem> cartProducts,double amount){
    _orders.insert(0, OrderItem(id: DateTime.now().toString(),amount: amount,products: cartProducts,dateTime: DateTime.now()));
    notifyListeners();
}

}