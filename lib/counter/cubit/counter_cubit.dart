import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/Model/movie_model.dart';
import 'package:flutter_application_1/service/movie_service.dart';

class MovieCubit extends Cubit<List<MovieModel>> {
  MovieCubit() : super([]);

  Future<void> fetchMovie() async {
    try {
      emit([]);
      final movies = await ListMovie.getMovieList();
      emit(movies);
    } catch (e) {
      print("error Loading  Movie : $e");
      emit([]);
    }
  }
}
