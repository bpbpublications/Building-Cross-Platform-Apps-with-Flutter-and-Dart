import 'package:flutter/material.dart';

class Code11_12 extends StatefulWidget {
  const Code11_12({Key? key}) : super(key: key);

  @override
  State<Code11_12> createState() =>
      _Code11_12State();
}

class _Code11_12State extends State<Code11_12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Do something here
          },
          child: Text("Tap here"),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
          ),
        ),
      ),
    );
  }
}
