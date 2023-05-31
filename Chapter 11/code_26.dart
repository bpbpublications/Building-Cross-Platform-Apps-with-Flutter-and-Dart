import 'package:flutter/material.dart';

class Code11_26 extends StatefulWidget {
  const Code11_26({Key? key}) : super(key: key);

  @override
  State<Code11_26> createState() => _Code11_26State();
}

class _Code11_26State extends State<Code11_26> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 100.0,
                height: 100.0,
                color: Colors.blue,
              ),
            ),
            Center(
              child: Container(
                width: 75.0,
                height: 75.0,
                color: Colors.green,
              ),
            ),
            Center(
              child: Container(
                width: 50.0,
                height: 50.0,
                color: Colors.red,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
