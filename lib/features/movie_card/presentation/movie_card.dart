import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';
import '../../../core/model/movie_model.dart';
import 'details_widget.dart';
import 'image_widget.dart';
import 'original_title_widget.dart';
import 'overview_widget.dart';
import 'rating_widget.dart';
import 'title_widget.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final int rank;
  const MovieCard({super.key, required this.movie, required this.rank});

  double getHorizontalMargin(context) {
    if (MediaQuery.of(context).padding.left == 0) {
      return 17;
    } else {
      return MediaQuery.of(context).padding.left;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(
        horizontal: getHorizontalMargin(context),
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: AppConstants.whiteColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ImageWidget(imageUrl: movie.posterPath),
          const SizedBox(width: 8),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OriginalTitleWidget(
                  originalTitle: movie.originalTitle,
                  rank: rank,
                ),
                const SizedBox(height: 4),
                TitleWidget(title: movie.title),
                const SizedBox(height: 6),
                DetailsWidget(movie: movie),
                const SizedBox(height: 6),
                OverviewWidget(overview: movie.overview),
                const SizedBox(height: 6),
                RatingWidget(popularity: movie.popularity),
              ],
            ),
          )
        ],
      ),
    );
  }
}
