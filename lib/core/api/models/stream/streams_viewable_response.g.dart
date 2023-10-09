// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'streams_viewable_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GetStreamsViewableResponse _$$_GetStreamsViewableResponseFromJson(
        Map<String, dynamic> json) =>
    _$_GetStreamsViewableResponse(
      total: json['total'] as int,
      data: (json['data'] as List<dynamic>)
          .map((e) => StreamModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GetStreamsViewableResponseToJson(
        _$_GetStreamsViewableResponse instance) =>
    <String, dynamic>{
      'total': instance.total,
      'data': instance.data.map((e) => e.toJson()).toList(),
    };
