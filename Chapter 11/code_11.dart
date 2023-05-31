import 'package:flutter/material.dart';

class Code11_11 extends StatefulWidget {
  const Code11_11({Key? key}) : super(key: key);

  @override
  State<Code11_11> createState() => _Code11_11State();
}

class _Code11_11State extends State<Code11_11> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          onPressed: () {
            // Do something here
          },
          child: Text("Tap here"),
        ),
      ),
    );
  }
}
