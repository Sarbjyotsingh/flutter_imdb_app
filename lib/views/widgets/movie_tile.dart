import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/models/movie_models/movie_model.dart';
import 'package:flutter_imdb_app/utils/colors.dart';
import 'package:flutter_imdb_app/utils/routes/routes_name.dart';

class MovieTile extends StatelessWidget {
  final MovieModel movieModel;
  const MovieTile({
    super.key,
    required this.movieModel,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, RoutesName.movieDetailScreen,
            arguments: movieModel);
      },
      child: CachedNetworkImage(
        imageUrl: movieModel.poster,
        placeholder: (context, url) => Container(
          color: kWhiteColor,
        ),
        errorWidget: (context, url, error) => Container(
          color: kWhiteColor,
          child: const Center(
            child: Text('Error: Loading Image'),
          ),
        ),
      ),
    );
  }
}
