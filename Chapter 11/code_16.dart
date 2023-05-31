import 'package:flutter/material.dart';

class Code11_16 extends StatefulWidget {
  const Code11_16({Key? key}) : super(key: key);

  @override
  State<Code11_16> createState() => _Code11_16State();
}

class _Code11_16State extends State<Code11_16> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
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
