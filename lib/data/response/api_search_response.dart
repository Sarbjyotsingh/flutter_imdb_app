import 'package:flutter_imdb_app/data/app_exceptions.dart';
import 'package:flutter_imdb_app/data/network/network_api_service.dart';
import 'package:flutter_imdb_app/models/api_repsonse_model/api_response_model.dart';
import 'package:flutter_imdb_app/models/api_repsonse_model/api_response_status.dart';

class MovieSearchAPI {
  final String _apiEndPoint = 'https://www.omdbapi.com';
  final String _apiKey = '489182a9';

  Future<APIResponseModel> getMovieSearchResponse(String searchText) async {
    APIResponseModel apiResponse;
    if (searchText.isNotEmpty) {
      String fetchUrl = '$_apiEndPoint/?s=$searchText&apikey=$_apiKey';
      try {
        apiResponse = APIResponseModel.fromJson(
            await NetworkApiService().getGetApiResponse(fetchUrl))
          ..status = APIResponseStatus.success;
      } on TooManyResultsException catch (_) {
        return APIResponseModel()..status = APIResponseStatus.tooManyResults;
      } on MovieNotFoundException catch (_) {
        return APIResponseModel()..status = APIResponseStatus.movieNotFound;
      }
    } else {
      apiResponse = APIResponseModel();
    }
    return apiResponse;
  }
}
