import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:her_hygiene/contraception/contraception.dart';
import 'package:her_hygiene/intro.dart';
import 'package:her_hygiene/products/product.dart';
import 'package:her_hygiene/quiz_selection.dart';
import './home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/HerLogo.png'),
        backgroundColor: Colors.pink.shade100,
        splashIconSize: 500.0,
        splashTransition: SplashTransition.sizeTransition,
        duration: 2000,
        nextScreen: Intro(),
      ),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int onClick = 0;

  final List pageToNavigate = [
    HomeScreen(),
    Product(),
    Contraception(),
    QuizOption(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pageToNavigate[onClick],
        backgroundColor: Colors.white,
        bottomNavigationBar: CurvedNavigationBar(
          animationDuration: Duration(milliseconds: 150),
          backgroundColor: Colors.white,
          color: Colors.pink.shade100,
          onTap: (index) {
            setState(() {
              onClick = index;
              print(onClick);
            });
          },
          items: <Widget>[
            Icon(Icons.home),
            Icon(Icons.water_drop),
            Icon(Icons.medical_information),
            Icon(Icons.quiz),
          ],
        ),
      ),
    );
  }
}
