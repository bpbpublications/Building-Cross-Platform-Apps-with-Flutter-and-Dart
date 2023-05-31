import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Test description',
    (WidgetTester tester) async {
      // Write your test here
      // To increase timeout
      tester.binding.addTime(Duration(seconds: 5));
    },
    timeout: Timeout(Duration(minutes: 1)),
    initialTimeout: Duration(seconds: 15),
  );
}
