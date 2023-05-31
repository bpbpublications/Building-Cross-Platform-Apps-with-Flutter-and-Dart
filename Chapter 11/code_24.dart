import 'package:flutter/material.dart';

class Code11_24 extends StatefulWidget {
  const Code11_24({Key? key}) : super(key: key);

  @override
  State<Code11_24> createState() => _Code11_24State();
}

class _Code11_24State extends State<Code11_24> {
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
          padding: EdgeInsets.only(top: 16.0),
        ),
      ),
    );
  }
}
