import 'package:flutter/material.dart';

class Code15_26 extends StatefulWidget {
  const Code15_26({Key? key}) : super(key: key);

  @override
  _Code15_26State createState() => _Code15_26State();
}

class _Code15_26State extends State<Code15_26> {
  bool isFirstState = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnimatedCrossFade(
      duration: const Duration(seconds: 1),
      crossFadeState:
          isFirstState ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: Container(
        color: Colors.green,
        width: 10.0,
        height: 10.0,
      ),
      secondChild: Container(
        color: Colors.red,
        width: 100.0,
        height: 100.0,
      ),
    ));
  }

  void changeState() {
    isFirstState = !isFirstState;
  }
}
