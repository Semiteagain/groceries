import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/components/button.dart';
import 'package:groceries/components/fruit_tile.dart';
import 'package:groceries/constants/intro_page_constant.dart';
import 'package:groceries/models/fruits.dart';
import 'package:groceries/theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  //  fruit menu
  List fruitMenu = [
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(
          Icons.menu,
          color: Colors.grey[900],
        ),
        title: Text(
          IntroConstants.introTitle,
          style: TextStyle(
            color: Colors.grey[900],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: primaryColor, borderRadius: BorderRadius.circular(20)),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 30% Promo",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    MyButton(
                      text: "Redeem",
                      onTap: () {},
                    ),
                  ],
                ),
                Image.asset(
                  IntroConstants.promoImage,
                  height: 75,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Fruit menu',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.grey[800]),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: fruitMenu.length,
              itemBuilder: (context, index) => FruitTile(
                fruit: fruitMenu[index],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
