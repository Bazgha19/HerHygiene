import 'package:flutter/material.dart';

class CondomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Condoms'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Types of condoms',
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            ListTile(
              leading: Image.network(
                'https://github.com/RiyaBhaskar12/WeEdu-/blob/master/her_hygiene/lib/contraception/images/mcondom.jpg',
                width: 50,
                height: 50,
              ),
              title: Text('Male condoms'),
              subtitle: Text(
                  "Male condoms are worn on a man's penis during sexual intercourse. They are a barrier method of contraception that can be used to prevent pregnancy and reduce the risk of sexually transmitted infections (STIs)."),
            ),
            ListTile(
              leading: Image.network(
                'https://github.com/RiyaBhaskar12/WeEdu-/blob/master/her_hygiene/lib/contraception/images/fcondom.webp',
                width: 50,
                height: 50,
              ),
              title: Text('Female condoms'),
              subtitle: Text(
                  'Female condoms are worn inside the vagina or anus during sexual intercourse. They are a barrier method of contraception that can be used to prevent pregnancy and reduce the risk of STIs. Female condoms are a good option for people who are allergic to latex.'),
            ),
          ],
        ),
      ),
          children: <Widget>[
            DataTable(
              columns: [
                DataColumn(label: Text('Pros')),
                DataColumn(label: Text('Cons')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('Effective at preventing pregnancy and STIs')),
                    DataCell(Text('May interfere with sexual pleasure or sensation')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Inexpensive and easy to obtain')),
                    DataCell(Text('May break or slip off if not used correctly')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('No long-term side effects')),
                    DataCell(Text('Some people may be allergic to latex')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Can be used in combination with other forms of contraception')),
                    DataCell(Text('Must be stored and disposed of properly')),
                  ],
                ),
              ],
            ),
          ],
      ),
    );
  }
}
