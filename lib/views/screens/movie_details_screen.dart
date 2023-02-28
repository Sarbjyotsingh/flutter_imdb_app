import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/models/movie_models/movie_model.dart';
import 'package:flutter_imdb_app/utils/colors.dart';
import 'package:flutter_imdb_app/utils/constants.dart';
import 'package:flutter_imdb_app/utils/style.dart';
import 'package:flutter_imdb_app/views/widgets/custom_cached_network_image.dart';

class MovieDetailScreen extends StatelessWidget {
  final MovieModel movieModel;
  const MovieDetailScreen({Key? key, required this.movieModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryDarkColor,
      appBar: AppBar(
        elevation: kAppBarElevation,
        title: const Text(
          'Movie Details',
          style: kAppBarTextStyle,
        ),
        backgroundColor: kPrimaryDarkColor,
      ),
      body: Padding(
        padding: kScreenPadding,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomCachedNetworkImage(imageURL: movieModel.poster),
              const SizedBox(
                height: 20,
              ),
              Text(
                movieModel.title,
                textAlign: TextAlign.center,
                style: kMovieTitleTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Release Date: ${movieModel.year}',
                textAlign: TextAlign.center,
                style: kMovieSubTitleTextStyle,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Type: ${movieModel.type}',
                textAlign: TextAlign.center,
                style: kMovieSubTitleTextStyle,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
