import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Code11_21 extends StatefulWidget {
  const Code11_21({Key? key}) : super(key: key);

  @override
  State<Code11_21> createState() => _Code11_21State();
}

class _Code11_21State extends State<Code11_21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Title",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
