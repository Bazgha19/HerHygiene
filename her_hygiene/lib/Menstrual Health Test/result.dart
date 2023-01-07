import 'package:flutter/material.dart';
import 'size_configs.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore >= 21) {
      resultText = 'You are just Awesome!';
    } else if (resultScore >= 19) {
      resultText = 'You have fair knowledge about menstrual hygiene';
    } else if (resultScore >= 17) {
      resultText = 'You can gain more knowledge about menstrual hygiene';
    } else if (resultScore >= 13) {
      resultText =
          'You can go through the various articles and gain more knowledge';
    } else if (resultScore >= 6) {
      resultText = 'You are not aware of menstrual hygiene';
    } else if (resultScore == 0) {
      resultText =
          'You need to gain knowledge about menstrual hygiene. Head on to articles.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(330),
            ),
            Text(
              resultPhrase,
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Georgia'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: getProportionateScreenHeight(150),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'home_screen');
              },
              child: Container(
                height: getProportionateScreenHeight(60),
                width: getProportionateScreenWidth(360),
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                margin: const EdgeInsets.fromLTRB(10, 1, 10, 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: const Color.fromRGBO(129, 19, 49, 0.8),
                  shape: BoxShape.rectangle,
                ),
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(10, 8, 10, 4),
                  child: Text(
                    'Continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Georgia',
                      fontWeight: FontWeight.w600,
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
