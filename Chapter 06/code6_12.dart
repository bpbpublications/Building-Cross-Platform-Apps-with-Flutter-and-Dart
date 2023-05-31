import 'package:flutter/material.dart';

void main() => runApp(const FutureBuilderExampleApp());

class FutureBuilderExampleApp extends StatelessWidget {
  const FutureBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FutureBuilderExample(),
    );
  }
}

class FutureBuilderExample extends StatefulWidget {
  const FutureBuilderExample({super.key});

  @override
  State<FutureBuilderExample> createState() => _FutureBuilderExampleState();
}

class _FutureBuilderExampleState extends State<FutureBuilderExample> {

  // Gives an error since the function cannot complete synchronously
  Future<List<String>> fetchNewsTitles() async {
    var titles = await loadTitlesFromCloud();
    return titles;
  }

  Future<List<String>> loadTitlesFromCloud() async {
    // loads titles from the network
    await Future.delayed(Duration(seconds: 1));
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      future: fetchNewsTitles(),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        // Check if async function is completed
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            // Build UI for error
          } else if (snapshot.hasData) {
            // Build UI for fetched data
          }
        }
      },
    );
  }
}