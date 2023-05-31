import 'package:flutter/material.dart';

class Code11_14 extends StatefulWidget {
  const Code11_14({Key? key}) : super(key: key);

  @override
  State<Code11_14> createState() => _Code11_14State();
}

class _Code11_14State extends State<Code11_14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
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
