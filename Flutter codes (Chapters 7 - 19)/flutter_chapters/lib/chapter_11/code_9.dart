import 'package:flutter/material.dart';

class Code11_9 extends StatefulWidget {
  const Code11_9({Key? key}) : super(key: key);

  @override
  State<Code11_9> createState() => _Code11_9State();
}

class _Code11_9State extends State<Code11_9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TextButton(
          onPressed: () {
            // Do something here
          },
          child: Text("Tap here"),
        ),
      ),
    );
  }
}
