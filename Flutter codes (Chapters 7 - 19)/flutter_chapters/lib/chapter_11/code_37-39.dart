import 'package:flutter/material.dart';

class Code11_37_39 extends StatefulWidget {
  const Code11_37_39({Key? key}) : super(key: key);

  @override
  State<Code11_37_39> createState() => _Code11_37_39State();
}

class _Code11_37_39State extends State<Code11_37_39> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Text("Position $index");
        },
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
