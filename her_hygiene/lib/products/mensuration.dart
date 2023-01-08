import 'package:flutter/material.dart';

class Mensuration extends StatefulWidget {
  const Mensuration({super.key});

  @override
  State<Mensuration> createState() => _MensurationState();
}

class _MensurationState extends State<Mensuration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(
          child: Text(
            'What is Menstruation?',
            style: TextStyle(
              color: Color.fromRGBO(179, 68, 98, 1),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico',
              letterSpacing: 2.5,
            ),
          ),
        ),
      ),
    );
  }
}
