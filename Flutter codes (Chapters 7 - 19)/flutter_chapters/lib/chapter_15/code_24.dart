import 'package:flutter/material.dart';

class Code15_24 extends StatefulWidget {
  const Code15_24({Key? key}) : super(key: key);
  @override
  _Code15_24State createState() => _Code15_24State();
}

class _Code15_24State extends State<Code15_24> {
  var opacity = 1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          duration: const Duration(seconds: 1),
          child: Container(
            color: Colors.green,
            width: 100.0,
            height: 100.0,
          ),
        ),
      ),
    );
  }

  void fadeOut() {
    opacity = 0.0;
  }
}
