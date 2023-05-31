void main() {
  double length = 0;
  double width = 0;
  Shape shape = Shape();
  (length, width) = shape.calculateLengthAndWidth();
}

class Shape {
  final double shapeLength;
  final double shapeWidth;

  Shape({this.shapeLength = 0, this.shapeWidth = 0});

  (double, double) calculateLengthAndWidth() {
    return (shapeLength, shapeWidth);
  }
}
