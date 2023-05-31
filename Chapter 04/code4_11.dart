main() {
  foo(() {
    print("Invoke function");
  });
}

void foo(Function x) {
  x();
}
