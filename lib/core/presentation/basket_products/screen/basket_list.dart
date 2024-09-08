import 'package:flutter/material.dart';
import 'package:furniture_shopping_app/core/data/model/producte_api.dart';

class CartProvider extends ChangeNotifier {
  final List<Product> _cart = [];
  int numbers = 0;
  int nn = 1;
  List<Product> get cart => _cart;
//////////////////////////////////////
  final List<Product> _cartSave = [];
  List<Product> get cartSave => _cartSave;

  void incremant() {
    numbers++;
    notifyListeners();
  }

  void decrmant() {
    if (numbers > 0) {
      numbers--;
    }
    notifyListeners();
  }

  void toggleFavorite(Product product) {
    for (int i = 0; i < numbers; i++) {
      _cart.add(product);
    }
    // _cart.insert(numbers, product);
    // if (_cart.contains(product)) {
    //   for (Product element in _cart) {
    //     element.getQuantity(numbers++);
    //   }
    // } else {
    //   _cart.add(product);
    // }
    notifyListeners();
  }

  void toggleFavoriteTwo(Product product) {
    _cartSave.add(product);
    // if (_cart.contains(product)) {
    //   for (Product element in _cart) {
    //     element.getQuantity(numbers++);
    //   }
    // } else {
    //   _cart.add(product);
    // }
    notifyListeners();
  }

  void delete(Product product) {
    _cart.remove(product);
    notifyListeners();
  }

  void deleteSave(Product product) {
    _cartSave.remove(product);
    notifyListeners();
  }

  int get number => cart.length;
  int get numberSave => cartSave.length;
  // static CartProvider of(
  //   BuildContext context, {
  //   bool listen = true,
  // }) {
  //   return Provider.of<CartProvider>(context, listen: listen);
  // }

  // int numberBasket = 0;

  // void dddd(aaaa) {
  //   pss.add(aaaa);
  //   notifyListeners();
  // }

  // int get count {
  //   return pss.length;
  // }
}
