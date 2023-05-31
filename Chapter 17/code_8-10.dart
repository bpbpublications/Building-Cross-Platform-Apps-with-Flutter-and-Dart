import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Calculator Tests', () {
    test('Calculator addition test', () {
      final calc = Calculator();
      var res = calc.add(2, 3);
      expect(res, 5);
    });
    test('Calculator subtraction test', () {
      final calc = Calculator();

      var res = calc.subtract(5, 2);
      expect(res, 3);
    });
  });
}

class Calculator {
  double add(double a, double b) {
    return a + b;
  }

  double subtract(double a, double b) {
    return a - b;
  }

  double multiply(double a, double b) {
    return a * b;
  }

  double divide(double a, double b) {
    return a / b;
  }
}
