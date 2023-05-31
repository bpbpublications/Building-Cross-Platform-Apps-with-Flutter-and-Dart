import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Code11_20 extends StatefulWidget {
  const Code11_20({Key? key}) : super(key: key);

  @override
  State<Code11_20> createState() => _Code11_20State();
}

class _Code11_20State extends State<Code11_20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
          child: Text(
            "Title",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
