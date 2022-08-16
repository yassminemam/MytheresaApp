import 'package:dio/dio.dart';
import 'dart:convert';
import 'dart:io';

class MoviesApi{
  final Dio _dio = Dio();

  Future getMoviesList() async {
    return getApiKeyFromJsonFile().then((apiKey) async {
      String getMoviesListURL = 'https://api.themoviedb.org/3/movie/upcoming?api_key=$apiKey';
      print(getMoviesListURL);
      try {
        final response = await _dio.get(getMoviesListURL);
        print(response.data);
        return response;
      } on DioError catch (dioError) {
        print(dioError.error);
        return dioError.response;
      }
    });
  }
  Future<String> getApiKeyFromJsonFile() async {
    var input = await File("../../settings.json").readAsString();
    var map = jsonDecode(input);
    print(map['api_key']);
    return map['api_key'];
  }
}