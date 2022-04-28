import 'package:flutter/material.dart';
import 'package:project_shop/data/dummy_data.dart';
import 'package:project_shop/models/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducst;

  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
