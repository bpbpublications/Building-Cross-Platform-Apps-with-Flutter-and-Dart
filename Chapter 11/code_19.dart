import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Code11_19 extends StatefulWidget {
  const Code11_19({Key? key}) : super(key: key);

  @override
  State<Code11_19> createState() => _Code11_19State();
}

class _Code11_19State extends State<Code11_19> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          CupertinoIcons.game_controller_solid,
          size: 60.0,
          color: Colors.blue,
        ),
      ),
    );
  }
}
