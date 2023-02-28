import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/utils/colors.dart';

const TextStyle kTextStyle = TextStyle(
  color: kWhiteColor,
);

const BoxDecoration kCustomListTileBoxDecoration = BoxDecoration(
  color: kSecondaryDarkColor,
  borderRadius: BorderRadius.all(
    Radius.circular(10),
  ),
);

const TextStyle kAppBarTextStyle = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 16,
);

const TextStyle kMovieTitleTextStyle = TextStyle(
  fontSize: 30,
  color: kGoldenColor,
  fontWeight: FontWeight.bold,
);

const TextStyle kMovieSubTitleTextStyle = TextStyle(
  fontSize: 14,
  color: kWhiteColor,
  fontWeight: FontWeight.w600,
);
