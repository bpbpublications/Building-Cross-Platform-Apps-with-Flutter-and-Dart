main() {
  countStream(10).listen((data) {
    print(data);
  }, onDone : () {
    // Completed
  }, onError : (err) {
    // React to error
  });
}

Stream<int> countStream(int end) async* {
  for (int i = 1; i <= end; i++) {
    yield i; }
}