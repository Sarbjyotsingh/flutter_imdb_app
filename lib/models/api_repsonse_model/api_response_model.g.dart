// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

APIResponseModel _$APIResponseModelFromJson(Map<String, dynamic> json) =>
    APIResponseModel(
      totalResults: json['totalResults'] as String?,
      search: (json['Search'] as List<dynamic>?)
              ?.map((e) => MovieModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      response: json['Response'] as String?,
    );

Map<String, dynamic> _$APIResponseModelToJson(APIResponseModel instance) =>
    <String, dynamic>{
      'totalResults': instance.totalResults,
      'Search': instance.search,
      'Response': instance.response,
    };
