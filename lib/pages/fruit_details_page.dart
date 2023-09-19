import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/models/fruits.dart';

class FruitDetailsPage extends StatefulWidget {
  final Fruit fruit;
  const FruitDetailsPage({super.key, required this.fruit});

  @override
  State<FruitDetailsPage> createState() => _FruitDetailsPageState();
}

class _FruitDetailsPageState extends State<FruitDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[900],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: ListView(
              children: [
                Image.asset(
                  widget.fruit.imgPath,
                  height: 120,
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.yellow[800],
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      widget.fruit.rating,
                      style: TextStyle(
                          color: Colors.grey[600], fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Text(
                  widget.fruit.name,
                  style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                ),
                const SizedBox(
                  height: 25,
                ),
                Text(
                  'Description',
                  style: TextStyle(
                    color: Colors.grey[900],
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('Lorem20')
              ],
            ),
          ))
        ],
      ),
    );
  }
}
