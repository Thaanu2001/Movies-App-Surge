import 'package:flutter/material.dart';

import '../../../core/constants/app_constants.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  const TitleWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: AppConstants.lightGreyColor,
      ),
    );
  }
}
