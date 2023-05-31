import 'package:flutter/material.dart';

class Code15_22 extends StatefulWidget {
  const Code15_22({Key? key}) : super(key: key);
  @override
  _Code15_22State createState() => _Code15_22State();
}

class _Code15_22State extends State<Code15_22> {
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
        ),
      ),
    );
  }
}
