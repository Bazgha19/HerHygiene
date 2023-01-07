import 'size_configs.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String quesText;

  Question(this.quesText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Text(
        quesText,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color.fromARGB(255, 38, 37, 37),
          fontFamily: 'Georgia',
        ),
        //textAlign: TextAlign.center,
      ),
    );
  }
}
