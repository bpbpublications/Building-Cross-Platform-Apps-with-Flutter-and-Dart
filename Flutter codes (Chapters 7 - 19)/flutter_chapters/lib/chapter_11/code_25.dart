import 'package:flutter/material.dart';

class Code11_25 extends StatefulWidget {
  const Code11_25({Key? key}) : super(key: key);

  @override
  State<Code11_25> createState() => _Code11_25State();
}

class _Code11_25State extends State<Code11_25> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue,
                Colors.red,
              ],
              stops: [0.0, 1.0],
            ),
          ),
        ),
      ),
    );
  }
}
