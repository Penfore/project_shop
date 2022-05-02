import 'package:flutter/material.dart';
import 'package:project_shop/data/dummy_data.dart';
import 'package:project_shop/models/product.dart';

class ProductList with ChangeNotifier {
  final List<Product> _items = dummyProducst;

  List<Product> get items => [...items];
  List<Product> get favoriteItems =>
      _items.where((product) => product.isFavorite).toList();

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}

  // bool _showFavoriteOnly = false;

  // List<Product> get items {
  //   if (_showFavoriteOnly) {
  //     return _items.where((product) => product.isFavorite).toList();
  //   }

  //   return [...items];
  // }

  // void showFavoriteOnly() {
  //   _showFavoriteOnly = true;
  //   notifyListeners();
  // }

  // void showAll() {
  //   _showFavoriteOnly = false;
  //   notifyListeners();
  // }

  // void addProduct(Product product) {
  //   _items.add(product);
  //   notifyListeners();
  // }
