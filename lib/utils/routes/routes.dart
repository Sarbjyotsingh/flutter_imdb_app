import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/models/movie_models/movie_model.dart';
import 'package:flutter_imdb_app/utils/routes/routes_name.dart';
import 'package:flutter_imdb_app/views/screens/home_screens.dart';
import 'package:flutter_imdb_app/views/screens/movie_details_screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());
      case RoutesName.movieDetailScreen:
        MovieModel loginArgument = settings.arguments as MovieModel;
        return MaterialPageRoute(
            builder: (BuildContext context) =>
                MovieDetailScreen(movieModel: loginArgument));

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
