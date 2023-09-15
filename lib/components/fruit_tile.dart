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
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
      ),
      margin: const EdgeInsets.only(left: 25),
      padding: const EdgeInsets.all(25),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            fruit.imgPath,
            height: 40,
          ),
          Text(
            fruit.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 15),
          ),
          SizedBox(
            width: 160,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$' + fruit.price,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[700],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[900],
                    ),
                    Text(
                      fruit.rating,
                      style: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
