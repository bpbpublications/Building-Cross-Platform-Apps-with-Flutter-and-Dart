import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Test description',
    (WidgetTester tester) async {
      // Write your test here
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            appBar: AppBar(),
          ),
        ),
      );
    },
  );
}
