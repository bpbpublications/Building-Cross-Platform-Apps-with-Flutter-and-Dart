import 'package:flutter/material.dart';

class Code11_1_8 extends StatefulWidget {
  const Code11_1_8({Key? key}) : super(key: key);

  @override
  State<Code11_1_8> createState() => _Code11_1_8State();
}

class _Code11_1_8State extends State<Code11_1_8> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do
            eiusmod tempor incididunt ut labore et dolore magna aliqua.''',
          style: TextStyle(
            fontFamily: "Raleway",
            color: Colors.red,
            letterSpacing: 5.0,
            wordSpacing: 5.0,
            shadows: [Shadow(blurRadius: 10.0, offset: Offset(5.0, 5.0))],
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
