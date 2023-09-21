import 'package:flutter/material.dart';
import 'package:groceries/models/fruits.dart';
import 'package:groceries/models/shop.dart';
import 'package:groceries/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: const Text('My Cart'),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            final Fruit fruit = value.cart[index];

            final String fruitName = fruit.name;

            final String fruitPrice = fruit.price;

            return ListTile(
              title: Text(fruitName),
              subtitle: Text(fruitPrice),
            );
          },
        ),
      ),
    );
  }
}
