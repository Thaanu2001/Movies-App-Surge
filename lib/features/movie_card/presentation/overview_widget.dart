import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';

class OverviewWidget extends StatelessWidget {
  final String overview;
  const OverviewWidget({super.key, required this.overview});

  @override
  Widget build(BuildContext context) {
    return Text(
      overview,
      style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: AppConstants.darkGreyColor,
      ),
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}
