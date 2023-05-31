main() {
  fetchNewsTitles();
}

void fetchNewsTitles() async {
  List<String> titles = await loadTitlesFromCloud(); // Throws an error
  print(titles);
}

Future<List<String>> loadTitlesFromCloud() async {
  // loads titles from the network
  await Future.delayed(Duration(seconds: 1));
  return [];
}