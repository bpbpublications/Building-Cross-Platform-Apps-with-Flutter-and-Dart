main() {
  var person = Person();
  String name = person.name ?? "John Doe";
}

class Person {
  String? name;
}