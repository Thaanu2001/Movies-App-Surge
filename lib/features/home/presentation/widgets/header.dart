import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    title: RichText(
      text: const TextSpan(
        text: 'Top Rated',
        children: [
          TextSpan(
            text: ' Movies',
            style: TextStyle(
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: AppConstants.blackColor,
        ),
      ),
    ),
    backgroundColor: AppConstants.whiteColor,
    elevation: 0,
  );
}
