import 'package:flutter/material.dart';

class Code11_27 extends StatefulWidget {
  const Code11_27({Key? key}) : super(key: key);

  @override
  State<Code11_27> createState() => _Code11_27State();
}

class _Code11_27State extends State<Code11_27> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 50.0,
              left: 50.0,
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
