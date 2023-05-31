main() {
  List<int> integers = [1, 2, 3, 4, 5];
  List<String> strings = [];

  integers.forEach((value) {
    strings.add(value.toString());
  });
}
