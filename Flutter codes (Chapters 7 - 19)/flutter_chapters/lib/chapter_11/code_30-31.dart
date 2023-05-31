import 'package:flutter/material.dart';

class Code11_30_31 extends StatefulWidget {
  const Code11_30_31({Key? key}) : super(key: key);

  @override
  State<Code11_30_31> createState() => _Code11_30_31State();
}

class _Code11_30_31State extends State<Code11_30_31> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Text"),
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        actions: [IconButton(icon: Icon(Icons.more_vert), onPressed: () {})],
        centerTitle: true,
      ),
    );
  }
}
