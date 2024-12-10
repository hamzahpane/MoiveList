import 'dart:convert';
import 'package:flutter_application_1/Model/movie_model.dart';
import 'package:flutter_application_1/config/config.dart';
import 'package:http/http.dart' as http;

class ListMovie {
  static Future<List<MovieModel>> getMovieList() async {
    List<MovieModel> listMovie = [];

    try {
      var response = await http.get(Uri.parse(ApiConfig.getApiUrl()));

      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);

        List listAllMovieRespon = responseBody["results"];

        listAllMovieRespon.forEach((data) {
          listMovie.add(MovieModel.fromJson(data));
        });
      } else {
        listMovie = [];
        print("Item flim tidak Masuk ");
      }
    } catch (e) {
      print(e);
    }
    return listMovie;
  }
}
