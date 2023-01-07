import 'size_configs.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  bool select = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(100),
            width: getProportionateScreenWidth(400),
            child: GestureDetector(
              onTap: () => selectHandler(),
              child: Container(
                margin: EdgeInsets.fromLTRB(30, 10, 10, 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  shape: BoxShape.rectangle,
                  color: Color.fromRGBO(255, 192, 203, 0.6),
                  border: Border.all(),
                ),
                //textColor: Colors.black,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 4, right: 4),
                    margin: EdgeInsets.only(left: 3, right: 3),
                    child: Text(
                      answerText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Georgia',
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
