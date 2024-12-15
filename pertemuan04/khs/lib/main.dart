import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Nilai Mata Kuliah',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const InputPage(),
    );
  }
}
