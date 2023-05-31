import 'package:riverpod/riverpod.dart';

final arithmeticProvider = StateNotifierProvider<Counter, int>((ref) {
  return Counter();
});

class Counter extends StateNotifier<int> {
  Counter() : super(0);
  void add(int a) {
    state = state + a;
  }

  void subtract(int a) {
    state = state - a;
  }

  void multiply(int a) {
    state = state * a;
  }

  void divide(int a) {
    state = state ~/ a;
  }
}
