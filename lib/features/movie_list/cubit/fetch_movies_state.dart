part of 'fetch_movies_cubit.dart';

@immutable
abstract class FetchMoviesState {}

class FetchMoviesInitial extends FetchMoviesState {}

class FetchMoviesLoaded extends FetchMoviesState {
  final List<Movie> movies;
  final bool isLastFetch;
  final String? errorMessage;

  FetchMoviesLoaded(this.movies, {this.isLastFetch = false, this.errorMessage});
}

class FetchMoviesLoading extends FetchMoviesState {
  final List<Movie> oldFetchedMovies;
  final bool isFirstFetch;

  FetchMoviesLoading(this.oldFetchedMovies, {this.isFirstFetch = false});
}
