import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../core/model/movie_model.dart';
import '../data/repository/movies_repository.dart';

part 'fetch_movies_state.dart';

class FetchMoviesCubit extends Cubit<FetchMoviesState> {
  final MoviesRepository _moviesRepository;
  int currentPage = 0;

  FetchMoviesCubit({required MoviesRepository moviesRepository})
      : _moviesRepository = moviesRepository,
        super(FetchMoviesInitial());

  void reloadDeals() {
    currentPage = 0;
    if (!isClosed) {
      // ignore: prefer_const_literals_to_create_immutables
      emit(FetchMoviesLoaded([]));
    }
    loadFetchMovies();
  }

  void loadFetchMovies() {
    if ((state is FetchMoviesLoaded)
        ? !(state as FetchMoviesLoaded).isLastFetch
        : true) {
      if (state is FetchMoviesLoading) return;

      final currentState = state;

      var oldFetchMovies = <Movie>[];
      if (currentState is FetchMoviesLoaded) {
        oldFetchMovies = currentState.movies;
      }

      if (!isClosed) {
        emit(
          FetchMoviesLoading(oldFetchMovies, isFirstFetch: currentPage == 0),
        );
      }

      _moviesRepository.fetchMovies(pageNumber: currentPage).then((response) {
        final movies = (state as FetchMoviesLoading).oldFetchedMovies;

        response.fold(
          (l) {
            if (!isClosed) {
              emit(
                FetchMoviesLoaded(movies, isLastFetch: true, errorMessage: l),
              );
            }
          },
          (r) {
            currentPage++;

            final movies = (state as FetchMoviesLoading).oldFetchedMovies;
            movies.addAll(r);

            if (!isClosed) {
              emit(FetchMoviesLoaded(movies, isLastFetch: r.isEmpty));
            }
          },
        );
      });
    }
  }
}
