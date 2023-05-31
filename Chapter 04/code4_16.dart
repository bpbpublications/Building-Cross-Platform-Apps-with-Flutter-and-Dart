main() {
  List a = [];
  a.demoFunction();
}

extension CustomList<E> on List<E> {
  List<E> demoFunction() {
    // Write logic here
    return this;
  }
}
