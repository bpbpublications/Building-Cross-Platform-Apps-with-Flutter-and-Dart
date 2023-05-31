import 'package:flutter/material.dart';

class Code11_40_44 extends StatefulWidget {
  const Code11_40_44({Key? key}) : super(key: key);

  @override
  State<Code11_40_44> createState() => _Code11_40_44State();
}

class _Code11_40_44State extends State<Code11_40_44> {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Center(
        child: Text(
          "Count: $_count",
          style: const TextStyle(
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
