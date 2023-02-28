import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/utils/colors.dart';

class CustomCachedNetworkImage extends StatelessWidget {
  const CustomCachedNetworkImage({
    super.key,
    required this.imageURL,
  });

  final String imageURL;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageURL,
      placeholder: (context, url) => Container(
        color: kWhiteColor,
      ),
      errorWidget: (context, url, error) => Container(
        color: kWhiteColor,
        child: const Center(
          child: Text('Error: Loading Image'),
        ),
      ),
    );
  }
}