import 'package:flutter/material.dart';

class Code15_23 extends StatefulWidget {
  const Code15_23({Key? key}) : super(key: key);
  @override
  _Code15_23State createState() => _Code15_23State();
}

class _Code15_23State extends State<Code15_23> {
  var width = 10.0;
  var height = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          color: Colors.green,
          width: width,
          height: height,
          curve: Curves.easeInOut,
        ),
      ),
    );
  }
}
