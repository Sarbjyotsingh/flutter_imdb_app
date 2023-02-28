import 'package:flutter/material.dart';
import 'package:flutter_imdb_app/controller/movie_search_controller.dart';
import 'package:flutter_imdb_app/utils/constants.dart';
import 'package:flutter_imdb_app/utils/helpers/debouncer.dart';
import 'package:flutter_imdb_app/views/widgets/custom_progress_indicator.dart';
import 'package:flutter_imdb_app/views/widgets/custom_search_field.dart';
import 'package:flutter_imdb_app/views/widgets/movie_tile.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  final _debouncer = Debouncer(milliseconds: 300);

  void _onSearchValueChanged(String value, WidgetRef ref) {
    _debouncer.run(() {
      var controller = ref.read(searchControllerProvider.notifier);
      controller.updateSearch(value);
    });
  }

  static const _progressLoading = CustomProgressIndicator();

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
                onChanged: (value) => _onSearchValueChanged(value, ref),
              ),
              const SizedBox(
                height: 10,
              ),
              Consumer(
                builder: (context, ref, child) {
                  final searchState = ref.watch(searchControllerProvider);
                  return searchState.when(
                    data: (data) {
                      return Expanded(
                        child: GridView.builder(
                          itemCount: data.search.length,
                          itemBuilder: (BuildContext context, int index) {
                            return MovieTile(movieModel: data.search[index]);
                          },
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                          ),
                        ),
                      );
                    },
                    loading: () {
                      return _progressLoading;
                    },
                    error: (error, stackTrace) {
                      // Show an error message
                      return Text(error.toString());
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
