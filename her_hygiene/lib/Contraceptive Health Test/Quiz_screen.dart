import './result2.dart';
import 'size_configs.dart';
import 'package:flutter/material.dart';
import 'quiz2.dart';
import './anwer2.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  final _questions = const [
    //Q1
    {
      'questionText': 'Continuous pregnancies can not lead to _______',
      'answers': [
        {
          'text': 'It can lead to various orthopaedic problems in female.',
          'score': 1
        },
        {
          'text': 'The level of vitamins and minerals decrease in the body',
          'score': 1
        },
        {'text': 'Health of mother will not be degraded', 'score': 3},
        {'text': 'It can lead to financial burden on the family', 'score': 1},
      ],
    },
    //Q2
    {
      'questionText': 'What is the appropriate time for having 2nd child?',
      'answers': [
        {'text': '3 months post first delivery', 'score': 1},
        {'text': '6 months post first delivery', 'score': 2},
        {'text': '18 months or more post first delivery', 'score': 3},
        {'text': 'I don\'t know', 'score': 0},
      ],
    },
    //Q3
    {
      'questionText':
          'Which of the following contraceptive methods do you prefer?',
      'answers': [
        {'text': 'Fem Shield/Condoms', 'score': 3},
        {'text': 'Intra Uterine Devices like CopperT', 'score': 3},
        {'text': 'Oral contraceptive pills', 'score': 2},
        {'text': 'Prefer not to say', 'score': 0},
      ],
    },
    //Q4
    {
      'questionText': 'How often do you get intimate with your partner?',
      'answers': [
        {'text': 'Prefer not to anwer', 'score': 0},
        {'text': 'Occassionally', 'score': 3},
        {'text': 'Very rarely', 'score': 3},
        {'text': 'Very often', 'score': 1},
      ],
    },
    //Q5
    {
      'questionText': 'How many children do you plan to have?',
      'answers': [
        {'text': '1 child only', 'score': 3},
        {'text': '2 children only ', 'score': 2},
        {'text': 'More than 3 children', 'score': 1},
        {'text': 'No biological child, I would rather adopt one ', 'score': 3},
      ],
    },
    //Q6
    {
      'questionText':
          'Have you consulted the doctors about the various Sexually Transmitted Diseases(STD\'s)',
      'answers': [
        {'text': 'I don\'t know about them', 'score': 0},
        {'text': 'No, I don\'t feel it\'s necssary', 'score': 1},
        {
          'text': 'Yes, it\'s necessary for me as well as my partner',
          'score': 3
        },
        {'text': 'Prefer not to answer', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totaldepressionScore = 0;

  void _answerQuestionDepression(int score) {
    _totaldepressionScore = _totaldepressionScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Colors.pink[50],
      //creating the appbar with the title and backward navigation icon
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.pink[50],
        title: const Text(
          'Contraceptive Health',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Georgia',
            color: Color.fromRGBO(129, 19, 49, 1),
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'quiz_option');
          },
          child: Icon(
            Icons.navigate_before_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: [
          _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestionDepression,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(
                  _totaldepressionScore,
                ),
          Container(
            width: getProportionateScreenWidth(20),
            height: getProportionateScreenHeight(40),
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: const EdgeInsets.fromLTRB(10, 1, 10, 1),
          ),
        ],
      ),
    );
  }
}
