import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/utils/colors.dart';
import 'package:flutter_imdb_app/utils/routes/routes.dart';
import 'package:flutter_imdb_app/utils/routes/routes_name.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Flutter IMDB App',
        theme: ThemeData(
          primaryColor: kPrimaryColor,
        ),
        initialRoute: RoutesName.home,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}
