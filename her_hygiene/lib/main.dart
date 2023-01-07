import 'package:flutter/material.dart';
import 'package:her_hygiene/Contraceptive%20Health%20Test/Quiz_screen.dart';
import 'package:her_hygiene/Menstrual%20Health%20Test/self_test.dart';
import 'package:her_hygiene/quiz_selection.dart';
import './home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'quiz_option',
      routes: {
        'quiz_option': (context) => const QuizOption(),
        'home_screen': (context) => const HomeScreen(),
        'quiz_screen': (context) =>
            const QuizScreen(), //screen  fro contraceptive health
        'self_test': (context) =>
            const SelfTestScreen(), //screen for Menstrual health quiz
      },
      /* home: SelfTestScreen(), */
    );
  }
}
