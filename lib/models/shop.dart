import 'package:flutter/material.dart';

import 'fruits.dart';

class Shop extends ChangeNotifier {
  final List<Fruit> _fruitMenu = [
    Fruit(
        name: 'Cauli Flower',
        price: '29.00',
        imgPath: 'lib/images/cauliflower.png',
        rating: '4.8'),
    Fruit(
        name: 'Grape',
        price: '25.00',
        imgPath: 'lib/images/grape.png',
        rating: '4.7'),
    Fruit(
        name: 'Orange',
        price: "23.00",
        imgPath: 'lib/images/orange.png',
        rating: '4.6'),
    Fruit(
        name: 'Vegatables',
        price: '28.00',
        imgPath: 'lib/images/vegetable.png',
        rating: '4.7'),
  ];

  List<Fruit> _cart = [];

  List<Fruit> get fruitMenu => _fruitMenu;
  List<Fruit> get cart => _cart;

  void addToCart(Fruit fruitItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(fruitItem);
    }
    notifyListeners();
  }

  void removeFromCart(Fruit fruit) {
    _cart.remove(fruit);
    notifyListeners();
  }
}
