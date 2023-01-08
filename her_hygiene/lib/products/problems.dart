import 'package:flutter/material.dart';
import 'package:folding_cell/folding_cell.dart';

class Problems extends StatelessWidget {
  final _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: Center(
          child: Text(
            'Problems in Menstruation',
            style: TextStyle(
              color: Color.fromRGBO(179, 68, 98, 1),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Georgia',
              letterSpacing: 2.5,
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.pink.shade200,
        alignment: Alignment.topCenter,
        child: SimpleFoldingCell.create(
          key: _foldingCellKey,
          frontWidget: _buildFrontWidget(),
          innerWidget: _buildInnerWidget(),
          cellSize: Size(MediaQuery.of(context).size.width, 140),
          padding: EdgeInsets.all(15),
          animationDuration: Duration(milliseconds: 300),
          borderRadius: 10,
          onOpen: () => print('cell opened'),
          onClose: () => print('cell closed'),
        ),
      ),
    );
  }

  Widget _buildFrontWidget() {
    return Container(
      color: Colors.pink.shade100,
      alignment: Alignment.center,
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.center,
            child: Text(
              "MENSTRUAL CRAMPS",
              style: TextStyle(
                color: Color.fromRGBO(179, 68, 98, 1),
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey.currentState?.toggleFold(),
              child: Text(
                "OPEN",
                style: TextStyle(
                  color: Color.fromRGBO(179, 68, 98, 1),
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink.shade50,
                minimumSize: Size(80, 40),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInnerWidget() {
    return Container(
      color: Colors.pink.shade100,
      padding: EdgeInsets.only(top: 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              "Menstrual Cramps",
              style: TextStyle(
                color: Color.fromRGBO(179, 68, 98, 1),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Menstrual cramps are throbbing or cramping pains in the lower abdomen. \nMany women have menstrual cramps just before and during their menstrual periods. \nFor some women, the discomfort is merely annoying.",
              style: TextStyle(
                color: Colors.pink.shade400,
                fontSize: 20.0,
              ),
            ),
          ),
          Positioned(
            right: 10,
            bottom: 10,
            child: TextButton(
              onPressed: () => _foldingCellKey.currentState?.toggleFold(),
              child: Text(
                "Close",
                style: TextStyle(
                  color: Color.fromRGBO(179, 68, 98, 1),
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.pink.shade50,
                minimumSize: Size(80, 40),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
