import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubit extends Cubit<int> {
  ArithmeticCubit() : super(0);

  void add(int a) => emit(state + a);

  void subtract(int a) => emit(state - a);

  void multiply(int a) => emit(state * a);

  void divide(int a) => emit(state ~/ a);
}
