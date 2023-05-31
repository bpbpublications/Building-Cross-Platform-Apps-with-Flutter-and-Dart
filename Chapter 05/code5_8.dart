main() {
  var person = Person();

  String? name = person.name != null ? person.name : "John Doe";
}

class Person {
  String? name;
}