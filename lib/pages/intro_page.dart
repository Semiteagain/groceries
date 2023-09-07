import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/components/button.dart';
import 'package:groceries/constants/intro_page_constant.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (IntroConstants.backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 25,
            ),

            Text(
              IntroConstants.introShop,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(IntroConstants.introImage),
            ),
            const SizedBox(
              height: 10,
            ),

            Text(
              IntroConstants.introTitle,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 44,
                color: Colors.white,
              ),
            ),

            // subtittle
            const Text(
              IntroConstants.introSubtitle,
              style: TextStyle(
                color: Color.fromARGB(255, 235, 201, 201),
                height: 2,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            MyButton(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, "/menupage");
              },
            ),
          ],
        ),
      ),
    );
  }
}
