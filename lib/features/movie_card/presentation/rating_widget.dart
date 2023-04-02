import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';

class RatingWidget extends StatelessWidget {
  final double popularity;
  const RatingWidget({super.key, required this.popularity});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.favorite,
          size: 16,
          color: AppConstants.redColor,
        ),
        const SizedBox(width: 4),
        Text(
          '${popularity.round()}% liked this film',
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppConstants.lightGreyColor,
          ),
        ),
      ],
    );
  }
}
