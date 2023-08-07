import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pocket_books/bookList.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => BookList()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 219, 161, 36),
        child: Center(
          child: Text(
            'Book Quest',
            style: TextStyle(
                letterSpacing: 4,
                wordSpacing: 3,
                shadows: [
                  Shadow(
                      color: Color.fromARGB(255, 49, 48, 43),
                      blurRadius: 4,
                      offset: Offset(1, 1)),
                ],
                decorationThickness: .3,
                decorationStyle: TextDecorationStyle.double,
                decoration: TextDecoration.overline,
                color: Colors.white,
                fontFamily: 'font_one',
                fontWeight: FontWeight.w900,
                fontSize: 50),
          ),
        ),
        height: double.infinity,
        width: double.infinity,
      ),
    );
  }
}
