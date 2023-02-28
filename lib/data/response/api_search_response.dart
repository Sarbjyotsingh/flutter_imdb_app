import 'package:flutter_imdb_app/data/network/network_api_service.dart';

class MovieSearchAPI {
  final String _apiEndPoint = 'https://www.omdbapi.com';
  final String _apiKey = '489182a9';
  Future getMovieSearchResponse(String searchText) async {
    Map<String, dynamic> apiResponse;
    if (searchText.isNotEmpty) {
      String fetchUrl = '$_apiEndPoint/?s={$searchText}&apikey=$_apiKey';

      apiResponse = await NetworkApiService().getGetApiResponse(fetchUrl);
    } else {
      apiResponse = {};
    }
    return apiResponse;
  }
}
