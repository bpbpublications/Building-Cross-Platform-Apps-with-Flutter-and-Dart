import 'package:flutter/material.dart';
import 'package:flutter_chapters/chapter_11/code_1-8.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // TODO: Replace this with the example you want to use
      home: const Code11_1_8(),
    );
  }
}

