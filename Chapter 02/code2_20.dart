main() {
  List<int> integers = [1, 2, 3, 4, 5];

  List<String> strings = integers.map((value) {
    return value.toString();
  }).toList();
}
