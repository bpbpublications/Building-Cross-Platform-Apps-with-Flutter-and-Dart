main() {
  Point? point;
// Assignment is carried out
  point ??= Point(x: 1, y: 2);
// Assignment is not carried out since point is already set
  point ??= Point(x: 2, y: 4);
}

class Point {
  int x;
  int y;

  Point({required this.x, required this.y});
}
