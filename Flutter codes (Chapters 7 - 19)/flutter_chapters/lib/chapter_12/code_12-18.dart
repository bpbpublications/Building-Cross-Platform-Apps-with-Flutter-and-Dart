import 'package:flutter/material.dart';

import 'code_7.dart';
import 'package:http/http.dart' as http;

class Code12_12_18 extends StatefulWidget {
  const Code12_12_18({Key? key}) : super(key: key);

  @override
  State<Code12_12_18> createState() => _Code12_12_18State();
}

class _Code12_12_18State extends State<Code12_12_18> {
  String baseUrl = "https://api.themoviedb.org/3";
  String trendingEndpoint = "/trending/movie/day";
  String apiKey = "YOUR_API_KEY";

  Future<TrendingResponseModel> getTrendingMovies() async {
    String url = baseUrl + trendingEndpoint + "?api_key=$apiKey";
    var response = await http.get(Uri.https(url));
    final trendingMovieModel = trendingResponseModelFromJson(response.body);
    return trendingMovieModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Movies'),
      ),
      body: FutureBuilder(
        future: getTrendingMovies(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }

          List<Result> movies = snapshot.data?.results ?? [];

          return ListView.builder(
            itemBuilder: (context, position) {
              return Card(
                child: ListTile(
                  title: Text(movies[position].originalTitle),
                  subtitle: Text(movies[position].overview),
                ),
              );
            },
            itemCount: movies.length,
          );
        },
      ),
    );
  }
}
