import 'package:flutter/material.dart';

class Code15_20 extends StatefulWidget {
  const Code15_20({Key? key}) : super(key: key);
  @override
  _Code15_20State createState() => _Code15_20State();
}

class _Code15_20State extends State<Code15_20> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Demo'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          duration: const Duration(seconds: 1),
          tween: Tween<double>(begin: 10.0, end: 100.0),
          builder: (context, value, wid) {
            return Container(
              width: value,
              height: value,
              color: Colors.green,
            );
          },
          curve: Curves.bounceInOut,
          onEnd: () {
            // Do something when animation ends
          },
        ),
      ),
    );
  }
}
