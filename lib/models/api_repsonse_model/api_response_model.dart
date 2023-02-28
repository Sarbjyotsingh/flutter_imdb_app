import 'package:flutter_imdb_app/models/movie_models/movie_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'api_response_model.g.dart';

@JsonSerializable()
class APIResponseModel {
  String? totalResults;

  @JsonKey(name: 'Search')
  List<MovieModel> search;

  @JsonKey(name: 'Response')
  String? response;

  APIResponseModel({
    this.totalResults,
    this.search = const [],
    this.response,
  });
  factory APIResponseModel.fromJson(Map<String, dynamic> json) =>
      _$APIResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$APIResponseModelToJson(this);
}
