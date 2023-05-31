import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Code11_18 extends StatefulWidget {
  const Code11_18({Key? key}) : super(key: key);

  @override
  State<Code11_18> createState() => _Code11_18State();
}

class _Code11_18State extends State<Code11_18> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Icon(
          CupertinoIcons.game_controller_solid,
        ),
      ),
    );
  }
}
