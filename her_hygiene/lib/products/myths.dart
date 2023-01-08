import 'package:flutter/material.dart';

class Myths extends StatefulWidget {
  const Myths({super.key});

  @override
  State<Myths> createState() => _MythsState();
}

class _MythsState extends State<Myths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(
          child: Text(
            'Myths Of Mensuration',
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
