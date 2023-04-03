import 'package:flutter/material.dart';

import '../../../../core/constants/app_constants.dart';

PreferredSizeWidget customAppBar() {
  return AppBar(
    title: const Text(
      'TOP RATED MOVIES',
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppConstants.blackColor,
      ),
    ),
    backgroundColor: AppConstants.whiteColor,
    elevation: 0,
  );
}
