import 'package:flutter/material.dart';

class Code14_1 extends StatelessWidget {
  const Code14_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Your action here
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amber),
      ),
      child: const Text(
        'Click here',
        style: TextStyle(
          color: Colors.white,
          fontSize: 24.0,
          fontWeight: FontWeight.w300,
          fontFamily: 'YOUR_FONT',
        ),
      ),
    );
  }
}
