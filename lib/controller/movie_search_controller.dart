import 'package:flutter_imdb_app/data/response/api_search_response.dart';
import 'package:flutter_imdb_app/models/api_repsonse_model/api_response_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchControllerProvider = StateNotifierProvider<SearchControllerNotifier,
    AsyncValue<APIResponseModel>>(
  (ref) => SearchControllerNotifier(),
);

class SearchControllerNotifier
    extends StateNotifier<AsyncValue<APIResponseModel>> {
  SearchControllerNotifier()
      : super(const AsyncValue<APIResponseModel>.loading()) {
    _init();
  }

  void _init() {
    state = AsyncValue.data(APIResponseModel());
  }

  Future<void> updateSearch(String query) async {
    state = const AsyncLoading();
    final response = await MovieSearchAPI().getMovieSearchResponse(query);
    state = AsyncValue.data(response);
  }
}
