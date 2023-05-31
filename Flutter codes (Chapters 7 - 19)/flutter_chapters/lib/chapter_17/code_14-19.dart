import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Finder tests', () {
    testWidgets(
      'Find by type',
      (WidgetTester tester) async {
        // Write your test here
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Text('Hi there!'),
              ),
            ),
          ),
        );
        var finder = find.byType(Text);
      },
    );

    testWidgets(
      'Find by text',
      (WidgetTester tester) async {
        // Write your test here
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Text('Hi there!'),
              ),
            ),
          ),
        );
        var finder = find.text('Hi there!');
      },
    );

    testWidgets(
      'Find by text',
      (WidgetTester tester) async {
        // Write your test here
        var controller = TextEditingController.fromValue(
            TextEditingValue(text: 'Hi there!'));
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: TextField(
                  controller: controller,
                ),
              ),
            ),
          ),
        );
        var finder = find.text('Hi there!');
      },
    );

    testWidgets(
      'Find by key',
      (WidgetTester tester) async {
        // Write your test here
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                child: Icon(
                  Icons.add,
                  key: Key('demoKey'),
                ),
              ),
            ),
          ),
        );
        var finder = find.byKey(Key('demoKey'));
      },
    );

    testWidgets(
      'Find by descendant',
      (WidgetTester tester) async {
        // Write your test here
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                key: Key('demoKey'),
                child: Icon(Icons.add),
              ),
            ),
          ),
        );
        var finder = find.descendant(
          of: find.byKey(Key('demoKey')),
          matching: find.byType(Icon),
        );
      },
    );

    testWidgets(
      'Find by ancestor',
      (WidgetTester tester) async {
        // Write your test here
        await tester.pumpWidget(
          MaterialApp(
            home: Scaffold(
              appBar: AppBar(),
              body: Center(
                key: Key('demoKey'),
                child: Icon(Icons.add),
              ),
            ),
          ),
        );
        var finder = find.ancestor(
          of: find.byType(Icon),
          matching: find.byKey(Key('demoKey')),
        );
      },
    );
  });
}
