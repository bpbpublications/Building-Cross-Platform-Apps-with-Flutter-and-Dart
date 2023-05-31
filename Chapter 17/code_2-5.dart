import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets(
    'Test description',
    (WidgetTester tester) async {
      // Write your test here
    },
    variant: ColorVariant(),
  );
}

enum WidgetColor {
  red,
  blue,
  green,
}

class ColorVariant extends TestVariant<WidgetColor> {
  @override
  String describeValue(WidgetColor value) {
    return value.toString();
  }

  @override
  Future<Object> setUp(WidgetColor value) {
    // Do setup here
  }
  @override
  Future<void> tearDown(WidgetColor value, covariant Object memento) {
    // Do teardown here
  }
  @override
  // TODO: implement values
  Iterable<WidgetColor> get values => WidgetColor.values;
}
