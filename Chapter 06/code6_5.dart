main() {
// Call the earlier function to fetch data
// This throws an error since function does not complete synchronously
  List<String> data = fetchNewsTitles();
// Print the data
  print(data);
}

// Gives an error since the function cannot complete synchronously
Future<List<String>> fetchNewsTitles() async {
  var titles = await loadTitlesFromCloud();
  return titles;
}

Future<List<String>> loadTitlesFromCloud() async {
  // loads titles from the network
  await Future.delayed(Duration(seconds: 1));
  return [];
}