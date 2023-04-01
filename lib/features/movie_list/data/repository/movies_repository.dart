import 'package:dartz/dartz.dart';

import '../../../../core/model/movie_model.dart';

abstract class MoviesRepository {
  Future<Either<String, List<Movie>>> fetchMovies({required int pageNumber});
}
