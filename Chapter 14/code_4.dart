import 'package:flutter/material.dart';

class Code14_4 extends StatelessWidget {
  const Code14_4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // In top of tree
        MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
          ),
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).primaryTextTheme.headline1;

    return Text(
      'This text has the headline1 style',
      style: textStyle,
    );
  }
}
