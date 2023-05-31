main() {
  var x = () {
    print("foobar");
  };

  foo(x);
}

void foo(Function x) {
  x();
}
