main() {
  countStream(10).listen((event) {
    print(event);
  });
}

Stream<int> countStream(int end) async* {
  for (int i = 1; i <= end; i++) {
    yield i; }
}