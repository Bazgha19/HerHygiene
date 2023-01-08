// import 'package:flutter/material.dart';

// void main() {
//   runApp(ContraceptionInfoPage());
// }

// class ContraceptionInfoPage extends StatefulWidget {
//   @override
//   _ContraceptionInfoPageState createState() => _ContraceptionInfoPageState();
// }

// class _ContraceptionInfoPageState extends State<ContraceptionInfoPage> {
//   int _selectedIndex = 0;
//   final List<String> _options = [
//     'Condoms',
//     'Oral Pill',
//     'Intra Uterine Devices',
//     'Female Sterilization',
//     'Male Sterilization'
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Contraception Methods'),
// //       ),
// //       body: ListView.builder(
// //         itemCount: contraceptionMethods.length,
// //         itemBuilder: (context, index) {
// //           ContraceptionMethod method = contraceptionMethods[index];
// //           return Card(
// //             child: Column(
// //               mainAxisSize: MainAxisSize.min,
// //               children: <Widget>[
// //                 ListTile(
// //                   leading: Image.network(
// //                     method.imageUrl,
// //                     width: 50,
// //                     height: 50,
// //                   ),
// //                   title: Text(method.name),
// //                   subtitle: Text(method.description),
// //                 ),
// //               ],
// //             ),
// //           );
// //         },
// //       ),
// //     );
