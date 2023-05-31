import 'package:flutter/material.dart';

class Code11_23 extends StatefulWidget {
  const Code11_23({Key? key}) : super(key: key);

  @override
  State<Code11_23> createState() => _Code11_23State();
}

class _Code11_23State extends State<Code11_23> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.blue,
          width: 100.0,
          height: 100.0,
          alignment: Alignment.topCenter,
          child: Icon(
            Icons.call,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
