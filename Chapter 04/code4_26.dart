main() {}

mixin DemoMixin {
  void foo() {}
}

class NormalClass {}

class CustomClass extends NormalClass with DemoMixin {
  void customFunction() {
    foo();
  }
}
