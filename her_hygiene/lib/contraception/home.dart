import 'package:flutter/material.dart';

void main() {
  runApp(ContraceptionInfoPage());
}

class ContraceptionInfoPage extends StatefulWidget {
  @override
  _ContraceptionInfoPageState createState() => _ContraceptionInfoPageState();
}

class _ContraceptionInfoPageState extends State<ContraceptionInfoPage> {
  int _selectedIndex = 0;
  final List<String> _options = [
    'Condoms',
    'Oral Pill',
    'Intra Uterine Devices',
    'Female Sterilization',
    'Male Sterilization'
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contraception Information'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please select a type of contraception from the options below:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _options.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => _onItemTapped(index),
                    child: Container(
                      height: 50,
                      color:
                          index == _selectedIndex ? Colors.blue : Colors.white,
                      child: Center(
                        child: Text(
                          _options[index],
                          style: TextStyle(
                            color: index == _selectedIndex
                                ? Colors.white
                                : Colors.black,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _selectedIndex > 0
                    ? 'You selected: ${_options[_selectedIndex]}'
                    : '',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
