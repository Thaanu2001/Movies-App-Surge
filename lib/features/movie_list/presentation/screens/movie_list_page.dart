import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/service_locator/service_locator.dart';
import '../../cubit/fetch_movies_cubit.dart';
import '../../data/repository/movies_repository.dart';
import 'movie_list_view.dart';

class MovieListPage extends StatelessWidget {
  const MovieListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FetchMoviesCubit(
        moviesRepository: locator<MoviesRepository>(),
      ),
      child: const MovieListView(),
    );
  }
}
