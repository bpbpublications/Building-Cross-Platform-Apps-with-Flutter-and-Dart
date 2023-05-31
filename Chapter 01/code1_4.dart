main() {
  Shape? shape; // Shape now has to be declared as a nullable type
  shape
      ?.calculateArea(); // Method will only be called if Shape object is not null
}

class Shape {
  void calculateArea() {
    // no-op
  }
}
