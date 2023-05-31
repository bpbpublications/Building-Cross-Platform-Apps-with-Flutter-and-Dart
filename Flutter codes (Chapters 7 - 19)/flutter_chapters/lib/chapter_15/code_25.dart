import 'package:flutter/material.dart';

class Code15_25 extends StatefulWidget {
  const Code15_25({Key? key}) : super(key: key);
  @override
  _Code15_25State createState() => _Code15_25State();
}

class _Code15_25State extends State<Code15_25> {
  var top = 15.0;
  var left = 25.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            duration: const Duration(seconds: 1),
            top: top,
            left: left,
            child: Container(
              color: Colors.green,
              width: 100.0,
              height: 100.0,
            ),
          )
        ],
      ),
    );
  }

  void moveContainer() {
    top = 150.0;
    left = 250.0;
  }
}
