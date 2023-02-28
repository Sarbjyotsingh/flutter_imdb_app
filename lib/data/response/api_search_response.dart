import 'package:flutter_imdb_app/data/network/network_api_service.dart';
import 'package:flutter_imdb_app/models/api_repsonse_model/api_response_model.dart';

class MovieSearchAPI {
  final String _apiEndPoint = 'https://www.omdbapi.com';
  final String _apiKey = '489182a9';

  Future<APIResponseModel> getMovieSearchResponse(String searchText) async {
    APIResponseModel apiResponse;
    if (searchText.isNotEmpty) {
      String fetchUrl = '$_apiEndPoint/?s={$searchText}&apikey=$_apiKey';

      apiResponse = await NetworkApiService().getGetApiResponse(fetchUrl);
    } else {
      apiResponse = APIResponseModel();
    }
    return apiResponse;
  }
}
