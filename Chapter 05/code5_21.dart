main() {
  List<int>? list;
  print(list[0]); // This gives an error
  print(list?[0]); // Prints "null"
}