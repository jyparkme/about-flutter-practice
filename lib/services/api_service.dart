import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toonflix/models/movie_list.dart';

import '../models/movie_detail.dart';

class ApiService {
  static const String popularMovieUrl =
      "https://movies-api.nomadcoders.workers.dev/popular";
  static const String playingMovieUrl =
      "https://movies-api.nomadcoders.workers.dev/now-playing";
  static const String comingMovieUrl =
      "https://movies-api.nomadcoders.workers.dev/coming-soon";
  static const String detailMovieUrl =
      "https://movies-api.nomadcoders.workers.dev/movie?id=";

  static Future<List<MovieList>> getMovieList([String? type]) async {
    Uri url;
    switch (type) {
      case "P":
        url = Uri.parse(playingMovieUrl);
        break;
      case "C":
        url = Uri.parse(comingMovieUrl);
        break;
      default:
        url = Uri.parse(popularMovieUrl);
    }
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      final List<dynamic> results = data['results'];
      return results.map((json) => MovieList.fromJson(json)).toList();
    }
    throw Error();
  }

  static Future<MovieDetail> getMovieDetail(int id) async {
    final url = Uri.parse('$detailMovieUrl$id');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = jsonDecode(response.body);
      return MovieDetail.fromJson(data);
    }
    throw Error();
  }
}
