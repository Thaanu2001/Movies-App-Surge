import 'package:movies_app_surge/core/model/movie_model.dart';

abstract class MoviesDataProvider {
  Future<List<Movie>> fetchMovies({required int pageNumber});
}
