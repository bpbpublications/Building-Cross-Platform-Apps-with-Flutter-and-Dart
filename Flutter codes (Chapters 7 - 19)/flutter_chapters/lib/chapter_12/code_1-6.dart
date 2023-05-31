import 'package:http/http.dart' as http;

String baseUrl = "https://api.themoviedb.org/3";
String trendingEndpoint = "/trending/movie/day";
String apiKey = "YOUR_API_KEY";

void getTrendingMovies() async {
  String url = baseUrl + trendingEndpoint + "?api_key=$apiKey";
  var response = await http.get(Uri.https(url));
  print(response.body);
}
