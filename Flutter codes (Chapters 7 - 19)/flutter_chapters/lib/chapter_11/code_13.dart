import 'package:flutter/material.dart';

class Code11_13 extends StatefulWidget {
  const Code11_13({Key? key}) : super(key: key);

  @override
  State<Code11_13> createState() => _Code11_13State();
}

class _Code11_13State extends State<Code11_13> {
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
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ),
    );
  }
}
