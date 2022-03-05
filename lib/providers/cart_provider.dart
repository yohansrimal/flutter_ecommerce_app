import 'package:ecommerceapp/data.dart';
import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {
  Set<Item> _items = {};

  Set<Item> get items => _items;

  bool isItemAdded(Item item) {
    return _items.contains(item);
  }

  void addItem(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void removeItem(Item item) {
    _items.remove(item);
    notifyListeners();
  }

  //Calculate Total
  double get total => _items.fold(0.0, (previousValue, item) => previousValue + item.price);
}
