import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';

class OriginalTitleWidget extends StatelessWidget {
  final String originalTitle;
  final int rank;
  const OriginalTitleWidget(
      {super.key, required this.originalTitle, required this.rank});

  @override
  Widget build(BuildContext context) {
    return Text(
      '#$rank $originalTitle',
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: AppConstants.darkGreyColor,
      ),
    );
  }
}
