import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:groceries/constants/intro_page_constant.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: (IntroConstants.backgroundColor),
      body: Padding(
        padding: EdgeInsets.all(25.0),
        child: Column(children: [
          SizedBox(
            height: 25,
          ),
          Text(
            IntroConstants.introTitle,
          ),
          SizedBox(
            height: 10,
          ),
          // subtittle
          Text(
            "Buy food or groceries online easly only with mobile phone",
            style: TextStyle(
              color: Colors.grey,
              height: 2,
            ),
          ),
          
          SizedBox(
            height: ,
          )
        ]),
      ),
    );
  }
}
