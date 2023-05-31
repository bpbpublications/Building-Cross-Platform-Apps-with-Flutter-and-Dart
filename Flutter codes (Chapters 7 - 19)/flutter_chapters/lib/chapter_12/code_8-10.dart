import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import 'code_7.dart';

String baseUrl = "https://api.themoviedb.org/3";
String trendingEndpoint = "/trending/movie/day";
String apiKey = "YOUR_API_KEY";

Future<TrendingResponseModel> getTrendingMovies() async {
  String url = baseUrl + trendingEndpoint + "?api_key=$apiKey";
  var response = await http.get(Uri.https(url));
  final trendingMovieModel = trendingResponseModelFromJson(response.body);
  return trendingMovieModel;
}
