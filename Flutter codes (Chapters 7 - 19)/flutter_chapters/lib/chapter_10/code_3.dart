import 'package:flutter/material.dart';

class Code10_3 extends StatefulWidget {
  final UserData data;
  const Code10_3({Key? key, required this.data}) : super(key: key);
  @override
  _Code10_3State createState() => _Code10_3State();
}

class _Code10_3State extends State<Code10_3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.data.email),
        ],
      ),
    );
  }
}

class UserData {
  String email;
  String username;

  UserData(this.email, this.username);
}
