import 'package:flutter/material.dart';
import 'package:her_hygiene/size_configs.dart';
import 'size_configs.dart';

class QuizOption extends StatefulWidget {
  const QuizOption({super.key});

  @override
  State<QuizOption> createState() => _QuizOptionState();
}

class _QuizOptionState extends State<QuizOption> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.pink[50],
        title: const Text(
          "Take Quiz",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Georgia',
            color: Color.fromRGBO(129, 19, 49, 1),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'home_screen');
          },
          child: Icon(
            Icons.navigate_before_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: getProportionateScreenHeight(40),
            ),
            //adding the option for menstrual health quiz
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'self_test');
              },
              child: Center(
                child: SizedBox(
                  height: getProportionateScreenHeight(300),
                  width: getProportionateScreenWidth(150),
                  child: const Image(
                    image: AssetImage("assets/pink_quiz.png"),
                  ),
                ),
              ),
            ),
            //button for taking the quiz
            Container(
              decoration: BoxDecoration(
                color: Colors.pink[300],
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            //sizedbox for spacing
            SizedBox(
              height: getProportionateScreenHeight(60),
            ),
            //adding the otion for contraception Quiz
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'quiz_screen');
              },
              child: Center(
                child: SizedBox(
                  height: getProportionateScreenHeight(300),
                  width: getProportionateScreenWidth(150),
                  child: const Image(
                    image: AssetImage("assets/contra_quiz.png"),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
