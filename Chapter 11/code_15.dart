import 'package:flutter/material.dart';

class Code11_15 extends StatefulWidget {
  const Code11_15({Key? key}) : super(key: key);

  @override
  State<Code11_15> createState() => _Code11_15State();
}

class _Code11_15State extends State<Code11_15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text("Text 1"),
            Text("Text 2"),
            Text("Text 3"),
          ],
        ),
      ),
    );
  }
}
