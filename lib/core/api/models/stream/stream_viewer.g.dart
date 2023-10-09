// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_viewer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamViewer _$$_StreamViewerFromJson(Map<String, dynamic> json) =>
    _$_StreamViewer(
      viewerID: json['viewerID'] as String,
      streamID: json['streamID'] as String,
      status: json['status'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      entity: json['__entity'] as String,
    );

Map<String, dynamic> _$$_StreamViewerToJson(_$_StreamViewer instance) =>
    <String, dynamic>{
      'viewerID': instance.viewerID,
      'streamID': instance.streamID,
      'status': instance.status,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      '__entity': instance.entity,
    };
