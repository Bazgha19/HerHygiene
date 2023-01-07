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
              height: getProportionateScreenHeight(20),
            ),
            //adding the option for menstrual health quiz
            Center(
              child: Container(
                height: getProportionateScreenHeight(300),
                width: getProportionateScreenWidth(150),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 192, 203, 0.6),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/per_quiz_final.png"),
                  ),
                ),
              ),
            ),
            //button for taking the quiz
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'self_test');
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(5)),
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(129, 19, 49, 0.8),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "Attempt Quiz",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

            //sizedbox for spacing
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            //adding the otion for contraception Quiz
            Center(
              child: Container(
                height: getProportionateScreenHeight(300),
                width: getProportionateScreenWidth(150),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 192, 203, 0.6),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    image: AssetImage("assets/contra_quiz_final.png"),
                  ),
                ),
              ),
            ),

            //button for taking the quiz
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'quiz_screen');
              },
              child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: getProportionateScreenHeight(5)),
                height: getProportionateScreenHeight(40),
                width: getProportionateScreenWidth(100),
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(129, 19, 49, 0.8),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Text(
                    "Attempt Quiz",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Georgia',
                      fontSize: 14,
                      color: Colors.white,
                    ),
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
