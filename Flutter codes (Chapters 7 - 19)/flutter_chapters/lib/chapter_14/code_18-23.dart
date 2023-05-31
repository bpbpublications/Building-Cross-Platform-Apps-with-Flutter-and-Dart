import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'code_17.dart';

class Code14_18_23 extends StatelessWidget {
  const Code14_18_23({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Use this if you need to use multiple providers:
    // MultiProvider(
    //   providers: [
    //     ChangeNotifierProvider(create: (context) => Model1()),
    //     ChangeNotifierProvider(create: (context) => Model2()),
    //     ChangeNotifierProvider(create: (context) => Model3()),
    //     ...
    //   ],
    //   child: MyApp(),
    // )

    return ChangeNotifierProvider(
      create: (context) => ArithmeticModel(),
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      color: Colors.black,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // Read without listening
    final currentValue = Provider.of<ArithmeticModel>(context, listen: false);
    final currentValueFromContext = context.watch<ArithmeticModel>();

    return Consumer<ArithmeticModel>(
      builder: (context, model, child) {
        return Text("Value: ${model.result}");
      },
    );
  }

  // Use this to listen to certain values
  Widget buildSelector() {
    return Selector<ArithmeticModel, int>(
      selector: (_, provider) => provider.result,
      builder: (context, value, child) {
        return Placeholder();
      },
    );
  }
}
