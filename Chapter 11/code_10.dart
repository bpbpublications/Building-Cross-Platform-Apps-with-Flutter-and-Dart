import 'package:flutter/material.dart';

class Code11_10 extends StatefulWidget {
  const Code11_10({Key? key}) : super(key: key);

  @override
  State<Code11_10> createState() => _Code11_10State();
}

class _Code11_10State extends State<Code11_10> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Do something here
          },
          child: Text("Tap here"),
        ),
      ),
    );
  }
}
