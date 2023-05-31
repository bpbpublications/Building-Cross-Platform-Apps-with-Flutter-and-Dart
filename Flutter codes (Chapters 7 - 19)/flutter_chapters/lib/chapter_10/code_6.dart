import 'package:flutter/material.dart';

class Code10_6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetsApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      color: Colors.black,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
