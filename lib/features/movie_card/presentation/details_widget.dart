import 'package:flutter/material.dart';
import 'package:movies_app_surge/core/model/movie_model.dart';

import '../../../core/constants/app_constants.dart';

class DetailsWidget extends StatelessWidget {
  final Movie movie;
  const DetailsWidget({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(
            movie.releaseDate,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppConstants.lightGreyColor,
            ),
          ),
        ),
        const SizedBox(width: 4),
        Flexible(
          child: Text(
            '(${movie.language})',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppConstants.lightGreyColor,
            ),
          ),
        ),
        Container(
          height: 4,
          width: 4,
          margin: const EdgeInsets.symmetric(horizontal: 6),
          decoration: const BoxDecoration(
            color: AppConstants.lightGreyColor,
            shape: BoxShape.circle,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: AppConstants.lightGreyColor,
            ),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            movie.adult ? 'R' : 'All',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppConstants.lightGreyColor,
            ),
          ),
        ),
      ],
    );
  }
}
