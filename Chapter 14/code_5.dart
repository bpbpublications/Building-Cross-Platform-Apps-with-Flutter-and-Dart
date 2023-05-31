import 'package:flutter/material.dart';

class Code14_5 extends StatelessWidget {
  const Code14_5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // In top of tree
        MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: Colors.white,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.blueGrey,
        backgroundColor: Colors.black,
      ),
      themeMode: ThemeMode.dark,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
