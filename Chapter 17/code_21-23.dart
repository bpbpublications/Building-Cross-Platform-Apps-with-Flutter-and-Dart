import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Test description',
    (WidgetTester tester) async {
      await tester.pumpWidget(CounterWidget());
      var finder = find.byIcon(Icons.add);
      await tester.tap(finder);
      await tester.pump();
      // Ignore this line for now
      // It just verifies that the value is what we expect it to be
      expect(find.text('1'), findsOneWidget);
    },
  );
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Text('$count'),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              count++;
            });
          },
        ),
      ),
    );
  }
}
