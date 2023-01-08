import 'package:flutter/material.dart';

class Problems extends StatefulWidget {
  const Problems({super.key});

  @override
  State<Problems> createState() => _ProblemsState();
}

class _ProblemsState extends State<Problems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(
          child: Text(
            'Problems In Menstruation',
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
