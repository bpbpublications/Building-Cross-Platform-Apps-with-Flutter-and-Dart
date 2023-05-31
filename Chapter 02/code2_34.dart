main() {
  void square(int a) {
    print(a * a);
  }

  int? a;
  // Throws an error
  square(a);
}
