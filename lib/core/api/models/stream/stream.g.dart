// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamModel _$$_StreamModelFromJson(Map<String, dynamic> json) =>
    _$_StreamModel(
      id: json['id'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      status: json['status'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      cluster: Cluster.fromJson(json['cluster'] as Map<String, dynamic>),
      streamViewers: (json['streamViewers'] as List<dynamic>)
          .map((e) => StreamViewer.fromJson(e as Map<String, dynamic>))
          .toList(),
      entity: json['__entity'] as String,
      hlsUrl: json['hlsUrl'] as String,
      flvUrl: json['flvUrl'] as String,
    );

Map<String, dynamic> _$$_StreamModelToJson(_$_StreamModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'address': instance.address,
      'status': instance.status,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'cluster': instance.cluster,
      'streamViewers': instance.streamViewers,
      '__entity': instance.entity,
      'hlsUrl': instance.hlsUrl,
      'flvUrl': instance.flvUrl,
    };
