import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
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
          ? CachedNetworkImage(
              imageUrl: ApiConstants.imagePath + imageUrl!,
              height: 180,
              width: 120,
              fit: BoxFit.cover,
              placeholder: (context, url) => const CupertinoActivityIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            )
          : Container(
              height: 180,
              width: 120,
              color: AppConstants.lightGreyColor,
            ),
    );
  }
}
