import 'package:flutter/material.dart';

class Code11_28_29 extends StatefulWidget {
  const Code11_28_29({Key? key}) : super(key: key);

  @override
  State<Code11_28_29> createState() => _Code11_28_29State();
}

class _Code11_28_29State extends State<Code11_28_29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Changed Text"),
        toolbarHeight: 100.0,
        backgroundColor: Colors.red,
      ),
    );
  }
}
