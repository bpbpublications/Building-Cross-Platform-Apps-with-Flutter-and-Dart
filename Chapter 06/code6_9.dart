main() {
  fetchNewsTitles().then((list) {
    // Prints list if successfully fetched
    print(list);
  }).catchError((err) {
    // Prints error if fetch is not successful
    print(err);
  }).timeout(Duration(seconds: 10), onTimeout: () {
    // Prints “timeout” is set duration is reached
    print("timeout");
  });
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
