import 'package:flutter/material.dart';

class Code10_1_2 extends StatelessWidget {
  final UserData data;
  const Code10_1_2({Key? key, required this.data}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(data.email),
          Text(data.username),
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
