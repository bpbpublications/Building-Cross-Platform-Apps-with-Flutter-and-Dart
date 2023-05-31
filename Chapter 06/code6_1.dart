main() {
  fetchNewsTitles();
}

void fetchNewsTitles() {
  List<String> titles = loadTitlesFromCloud(); // Throws an error
  print(titles);
}

Future<List<String>> loadTitlesFromCloud() async {
  // loads titles from the network
  await Future.delayed(Duration(seconds: 1));
  return [];
}
