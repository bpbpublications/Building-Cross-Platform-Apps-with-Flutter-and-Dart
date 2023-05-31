import 'package:flutter/cupertino.dart';

class Code10_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      theme: CupertinoThemeData(),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, String? title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
