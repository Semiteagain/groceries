import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/components/button.dart';
import 'package:groceries/constants/intro_page_constant.dart';
import 'package:groceries/theme/colors.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(
              height: 20,
            ),

            Text(
              IntroConstants.introShop,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset(
                IntroConstants.introImage,
                height: MediaQuery.of(context).size.height * .25,
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            Text(
              IntroConstants.introTitle,
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 30,
                color: Colors.white,
              ),
            ),

            const SizedBox(
              height: 10,
            ),

            // subtittle
            const Text(
              IntroConstants.introSubtitle,
              style: TextStyle(
                color: Color.fromARGB(255, 207, 207, 207),
                height: 2,
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            MyButton(
              text: "Get Started",
              onTap: () {
                Navigator.pushNamed(context, '/menupage');
              },
            ),
          ],
        ),
      ),
    );
  }
}
