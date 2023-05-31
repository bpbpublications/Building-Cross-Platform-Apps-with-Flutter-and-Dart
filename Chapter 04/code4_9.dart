main() {
 foo(printSomething);
}

void printSomething() {
  print('Hello, World!');
}

void foo(Function x) {
  x();
}
