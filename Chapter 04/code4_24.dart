main() {}

class NormalClass {
  NormalClass.namedConstructor();
}

class CustomClass extends NormalClass {
  CustomClass() : super.namedConstructor();
}
