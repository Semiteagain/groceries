import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/models/fruits.dart';

class FruitTile extends StatelessWidget {
  final Fruit fruit;
  const FruitTile({
    super.key,
    required this.fruit,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[100], borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Image.asset(
            fruit.imgPath,
            height: 140,
          ),
          Text(
            fruit.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 20),
          )
        ],
      ),
    );
  }
}
