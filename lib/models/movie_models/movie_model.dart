import 'package:json_annotation/json_annotation.dart';

part 'movie_model.g.dart';

@JsonSerializable()
class MovieModel {
  @JsonKey(name: 'Title')
  String title;

  @JsonKey(name: 'Year')
  String year;

  String imdbID;

  @JsonKey(name: 'Type')
  String type;

  @JsonKey(name: 'Poster')
  String poster;

  MovieModel({
    required this.title,
    required this.year,
    required this.type,
    required this.imdbID,
    required this.poster,
  });

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);

  Map<String, dynamic> toJson() => _$MovieModelToJson(this);
}
