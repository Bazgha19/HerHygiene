import './result.dart';
import 'size_configs.dart';
import 'package:flutter/material.dart';
import 'quiz.dart';
import './anwer.dart';

class SelfTestScreen extends StatefulWidget {
  const SelfTestScreen({super.key});

  @override
  State<SelfTestScreen> createState() => _SelfTestScreenState();
}

class _SelfTestScreenState extends State<SelfTestScreen> {
  final _questions = const [
    //Q1
    {
      'questionText': 'Do you keep a track of your periods?',
      'answers': [
        {'text': 'I do keep a track of my periods', 'score': 3},
        {'text': 'I am not bothered about my periods', 'score': 2},
        {'text': 'I don\'t think it is necessary', 'score': 1},
        {'text': 'I don\'t want to disclose', 'score': 0},
      ],
    },
    //Q2
    {
      'questionText': 'Do you use clothes to avoid staining during periods?',
      'answers': [
        {'text': 'Yes, I use them during less flow', 'score': 2},
        {'text': 'No, I know that they can cause infections', 'score': 3},
        {'text': 'Yes, I always use them as they are inexpensive', 'score': 1},
        {'text': 'I prefer not to answer', 'score': 0},
      ],
    },
    //Q3
    {
      'questionText': 'How often do you change a sanitary pad per day?',
      'answers': [
        {'text': 'Same pad for the whole day', 'score': 0},
        {'text': 'Every 10 or 12 hours', 'score': 1},
        {'text': 'Every 6 or 8 hours', 'score': 2},
        {'text': 'Every 3 to 4 hours', 'score': 3},
      ],
    },
    //Q4
    //scoring yet to be decided
    {
      'questionText': 'Which among these, do you use the most during periods?',
      'answers': [
        {'text': 'Sanitary napkins', 'score': 3},
        {'text': 'Menstrual Cups', 'score': 3},
        {'text': 'Tampons', 'score': 2},
        {'text': 'Reusable and washable cloth pads', 'score': 1},
      ],
    },
    //Q5
    {
      'questionText': 'How do you dispose the blooded material?',
      'answers': [
        {'text': 'Throw them as it is in the garbage bin ', 'score': 1},
        {'text': 'Flush them in the in the toilet ', 'score': 0},
        {
          'text': 'Wrap them in disposal bags and then dispose them off',
          'score': 3
        },
        {
          'text': 'Clean the menstrual cups thoroughly,dry and then reuse',
          'score': 3
        },
      ],
    },
    //Q6
    {
      'questionText': 'Do you clean your genital area regularly?',
      'answers': [
        {'text': 'Yes, it\'s necessary to clean it everyaday', 'score': 3},
        {'text': 'No, I don\'t feel it\'s necssary', 'score': 0},
        {'text': 'Not always, but occasionally', 'score': 2},
        {'text': 'I don\'t know how to clean my genital area', 'score': 1},
      ],
    },
    //Q7
    {
      'questionText': 'Do you take bath daily when you are menstruating?',
      'answers': [
        {'text': 'I don\'t take a bath during periods.', 'score': 0},
        {
          'text': 'I avoid taking bath as hot water causes heavy bleeding',
          'score': 0
        },
        {'text': 'I take bath daily to mantain proper hygiene', 'score': 3},
        {
          'text': 'I ain\'t allowed to bath as I\'m considered "Impure"',
          'score': 0
        },
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
          'Menstrual Health',
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
