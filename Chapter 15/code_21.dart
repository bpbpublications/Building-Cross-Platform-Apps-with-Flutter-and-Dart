import 'package:flutter/material.dart';

class Code15_21 extends StatefulWidget {
  const Code15_21({Key? key}) : super(key: key);
  @override
  _Code15_21State createState() => _Code15_21State();
}

class _Code15_21State extends State<Code15_21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(seconds: 1),
          color: Colors.green,
          width: 10.0,
          height: 10.0,
        ),
      ),
    );
  }
}
