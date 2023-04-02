import 'package:flutter/material.dart';
import 'package:movies_app_surge/core/constants/app_constants.dart';

import '../../../core/constants/api_constants.dart';

class ImageWidget extends StatelessWidget {
  final String? imageUrl;
  const ImageWidget({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: (imageUrl != null)
          ? Image.network(
              ApiConstants.imagePath + imageUrl!,
              height: 180,
              width: 120,
              fit: BoxFit.cover,
            )
          : Container(
              height: 180,
              width: 120,
              color: AppConstants.lightGreyColor,
            ),
    );
  }
}
