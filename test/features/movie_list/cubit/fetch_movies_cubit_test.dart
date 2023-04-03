import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:movies_app_surge/core/service_locator/service_locator.dart';
import 'package:movies_app_surge/features/movie_list/cubit/fetch_movies_cubit.dart';
import 'package:movies_app_surge/features/movie_list/data/repository/movies_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupLocator();
  group('FetchMoviesCubit', () {
    late FetchMoviesCubit fetchMoviesCubit;

    setUp(() {
      fetchMoviesCubit =
          FetchMoviesCubit(moviesRepository: locator<MoviesRepository>());
    });

    tearDown(() {
      fetchMoviesCubit.close();
    });

    test('emits [FetchMoviesInitial] as the initial state of the cubit.', () {
      expect(fetchMoviesCubit.state, FetchMoviesInitial());
    });

    blocTest<FetchMoviesCubit, FetchMoviesState>(
      'emits [FetchMoviesLoading, FetchMoviesLoaded] when fetchMovies is called.',
      build: () => fetchMoviesCubit,
      act: (cubit) => cubit.fetchMovies(),
      wait: const Duration(seconds: 1),
      expect: () => [
        isA<FetchMoviesLoading>(),
        isA<FetchMoviesLoaded>(),
      ],
    );

    blocTest<FetchMoviesCubit, FetchMoviesState>(
      'emits FetchMoviesLoaded when reloadDeals is called',
      build: () => fetchMoviesCubit,
      act: (cubit) => cubit.reloadDeals(),
      wait: const Duration(seconds: 1),
      expect: () => [
        isA<FetchMoviesLoaded>(),
        isA<FetchMoviesLoading>(),
        isA<FetchMoviesLoaded>(),
      ],
    );
  });
}
