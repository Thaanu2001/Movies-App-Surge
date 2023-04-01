import 'package:dartz/dartz.dart';

import '../../../../core/model/movie_model.dart';
import '../data_provider/movies_data_provider.dart';
import '../failure/movies_failure.dart';
import 'movies_repository.dart';

class MoviesRepositoryImpl extends MoviesRepository {
  final MoviesDataProvider _dataProvider;

  MoviesRepositoryImpl({required MoviesDataProvider dataProvider})
      : _dataProvider = dataProvider;

  @override
  Future<Either<String, List<Movie>>> fetchMovies({
    required int pageNumber,
  }) async {
    try {
      final response = await _dataProvider.fetchMovies(pageNumber: pageNumber);
      return right(response);
    } on MoviesFailure catch (e) {
      return left(e.message);
    } catch (e) {
      return left(e.toString());
    }
  }
}
