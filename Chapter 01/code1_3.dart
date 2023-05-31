main() {
  Shape shape; // Notice that is still null

  // GIVES AN ERROR SINCE SHAPE IS NOT INITIALISED
  shape.calculateArea(); // No compile-time errors
}

class Shape {
  void calculateArea() {
    // no-op
  }
}
