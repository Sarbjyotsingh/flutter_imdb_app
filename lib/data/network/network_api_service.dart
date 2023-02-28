import 'dart:convert';
import 'dart:io';
import 'package:flutter_imdb_app/data/app_exceptions.dart';
import 'package:flutter_imdb_app/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiService extends BaseApiServices {
  @override
  Future getGetApiResponse(String url) async {
    dynamic responseJson;
    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  @override
  Future getPostApiResponse(String url, dynamic data) async {
    dynamic responseJson;
    try {
      http.Response response = await http
          .post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));

      responseJson = returnResponse(response);
    } on SocketException {
      throw FetchDataException('No Internet Connection');
    }

    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    dynamic responseJson = jsonDecode(utf8.decode(response.bodyBytes));
    final String responseStatus = responseJson['Response'];
    switch (responseStatus) {
      case 'True':
        return responseJson;
      default:
        {
          final String errorCode = responseJson['Error'];
          if (errorCode == 'Too many results.') {
            throw TooManyResultsException(
                'Error accured while communicating with server with Error: Too many results.');
          }
          if (errorCode == 'Movie not found!') {
            throw MovieNotFoundException(
                'Error accured while communicating with server with Error: Movie not found!');
          } else {
            throw FetchDataException(
                'Error accured while communicating with server with Error:$errorCode');
          }
        }
    }
  }
}
