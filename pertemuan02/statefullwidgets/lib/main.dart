import 'package:flutter/material.dart';
import 'contohstatefullwidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Widget',
      home: ContohStatefulWidget(),
    ); // MaterialApp
  }
}

//Code Statelesswidget//
// import 'package:flutter/material.dart';
// import 'contohstatelesswidget.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Belajar Widget',
//       home: Contohstatelesswidget()
//     ); // MaterialApp
//   }
// }
