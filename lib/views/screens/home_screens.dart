import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/utils/constants.dart';
import 'package:flutter_imdb_app/views/widgets/custom_search_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  void _onSearchValueChanged(String value) {}
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: kScreenPadding,
          child: Column(
            children: [
              CustomSearchField(
                hintText: kSearchHintText,
                searchController: _searchController,
                onChanged: (value) => _onSearchValueChanged(value),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
