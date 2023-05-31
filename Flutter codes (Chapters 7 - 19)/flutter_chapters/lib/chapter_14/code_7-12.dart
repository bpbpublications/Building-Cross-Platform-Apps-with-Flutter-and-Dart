import 'package:flutter/material.dart';

class Code14_7_12 extends StatelessWidget {
  const Code14_7_12({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        // Cannot pass arguments in routes
        '/': (context) => MyHomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
      initialRoute: '/',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              pushPage(context);
            },
            child: Text('Push Page'),
          ),
          ElevatedButton(
            onPressed: () {
              popPage(context);
            },
            child: Text('Push Page'),
          ),
          ElevatedButton(
            onPressed: () {
              pushReplacement(context);
            },
            child: Text('Push Page'),
          ),
          ElevatedButton(
            onPressed: () {
              popUntil(context);
            },
            child: Text('Push Page'),
          ),
        ],
      ),
    );
  }

  void pushPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page1(),
      ),
    );
  }

  void popPage(BuildContext context) {
    Navigator.pop(context);
  }

  void pushReplacement(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page1(),
      ),
    );
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Page2(),
      ),
    );
  }

  void pushAndRemoveUntil(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page1(),
      ),
    );
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Page2(),
      ),
    );
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => Page3(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  void popUntil(BuildContext context) async {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Page1(),
      ),
    );
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Page2(),
      ),
    );
    await Future.delayed(Duration(seconds: 1));
    Navigator.popUntil(
      context,
      ModalRoute.withName('/page1'),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
