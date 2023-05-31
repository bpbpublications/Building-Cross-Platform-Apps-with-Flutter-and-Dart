main() {
  var person = Person();

  String? name = "";
  if(person.name != null) {
  name = person.name;
  } else {
  name = "John Doe";
  }
}

class Person {
  String? name;
}