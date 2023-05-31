import 'package:flutter/material.dart';

class Code14_6 extends StatelessWidget {
  const Code14_6({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return // In top of tree
        MaterialApp(
      title: 'Flutter Demo',
      routes: {
        // Cannot pass arguments in routes
        '/': (context) => MyHomePage(),
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
      // Can pass parameters
      onGenerateRoute: (settings) {
        final route = settings.name;
        final args = settings.arguments;
        // Return appropriate page according to route and args
      },
      initialRoute: '/',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
