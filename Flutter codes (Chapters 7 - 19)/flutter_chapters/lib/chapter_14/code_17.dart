import 'package:flutter/material.dart';

class ArithmeticModel extends ChangeNotifier {
  int result = 0;

  void add(int a) {
    result = result + a;
    notifyListeners();
  }

  void subtract(int a) {
    result = result - a;
    notifyListeners();
  }

  void multiply(int a) {
    result = result * a;
    notifyListeners();
  }

  void divide(int a) {
    result = result ~/ a;
    notifyListeners();
  }
}
