import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../../core/model/movie_model.dart';
import '../../../movie_card/presentation/movie_card.dart';
import '../../cubit/fetch_movies_cubit.dart';

class MovieListView extends StatefulWidget {
  const MovieListView({super.key});

  @override
  State<MovieListView> createState() => _MovieListViewState();
}

class _MovieListViewState extends State<MovieListView>
    with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  late AnimationController _anicontroller, _scaleController;
  final RefreshController _refreshController =
      RefreshController(initialRefresh: false);

  @override
  void initState() {
    super.initState();

    setupScrollController(context);

    BlocProvider.of<FetchMoviesCubit>(context).fetchMovies();

    _anicontroller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2000));
    _scaleController =
        AnimationController(value: 0.0, vsync: this, upperBound: 1.0);
    _refreshController.headerMode!.addListener(() {
      if (_refreshController.headerStatus == RefreshStatus.idle) {
        _scaleController.value = 0.0;
        _anicontroller.reset();
      } else if (_refreshController.headerStatus == RefreshStatus.refreshing) {
        _anicontroller.repeat();
      }
    });
  }

  void setupScrollController(context) {
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
              _scrollController.position.maxScrollExtent &&
          _scrollController.position.pixels != 0) {
        BlocProvider.of<FetchMoviesCubit>(context).fetchMovies();
      }
    });
  }

  void _refreshData() {
    BlocProvider.of<FetchMoviesCubit>(context).reloadDeals();
    _refreshController.refreshCompleted();
  }

  Widget _loadingIndicator() {
    return Container(
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(
        top: 5,
        bottom: MediaQuery.of(context).padding.bottom,
      ),
      child: const CupertinoActivityIndicator(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FetchMoviesCubit, FetchMoviesState>(
      listener: (context, state) {
        if (state is FetchMoviesLoaded) {
          if (state.errorMessage != null) {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text(state.errorMessage ?? 'Movie fetching failure'),
                ),
              );
          }
        }
      },
      child: SmartRefresher(
        enablePullDown: true,
        controller: _refreshController,
        onRefresh: _refreshData,
        scrollController: _scrollController,
        header: CustomHeader(
          refreshStyle: RefreshStyle.Behind,
          onOffsetChange: (offset) {
            if (_refreshController.headerMode!.value !=
                RefreshStatus.refreshing) {
              _scaleController.value = offset / 80.0;
            }
          },
          height: 20,
          builder: (c, m) {
            return Container(
              padding: const EdgeInsets.only(top: 15),
              child: FadeTransition(
                opacity: _scaleController,
                child: ScaleTransition(
                  scale: _scaleController,
                  child: const CupertinoActivityIndicator(),
                ),
              ),
            );
          },
        ),
        child: BlocBuilder<FetchMoviesCubit, FetchMoviesState>(
          builder: (context, state) {
            if (state is FetchMoviesLoading && state.isFirstFetch) {
              return Container(
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.all(5),
                child: const CupertinoActivityIndicator(),
              );
            }

            List<Movie> movies = [];
            bool isLastFetch = false;

            if (state is FetchMoviesLoading) {
              movies = state.oldFetchedMovies;
            } else if (state is FetchMoviesLoaded) {
              movies = state.movies;
              isLastFetch = state.isLastFetch;
            }

            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(bottom: 10),
              itemBuilder: (context, index) {
                if (index < movies.length) {
                  return MovieCard(
                    movie: movies[index],
                    rank: index + 1,
                  );
                } else if (isLastFetch) {
                  return const Align(
                    alignment: Alignment.topCenter,
                    child: Text('No movies found.'),
                  );
                }
                return _loadingIndicator();
              },
              itemCount: movies.length + 1,
            );
          },
        ),
      ),
    );
  }
}
