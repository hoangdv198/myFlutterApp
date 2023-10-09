// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cluster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Cluster _$$_ClusterFromJson(Map<String, dynamic> json) => _$_Cluster(
      id: json['id'] as int,
      domain: json['domain'] as String,
      port: json['port'] as int?,
      protocol: json['protocol'] as String,
      username: json['username'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      entity: json['__entity'] as String,
    );

Map<String, dynamic> _$$_ClusterToJson(_$_Cluster instance) =>
    <String, dynamic>{
      'id': instance.id,
      'domain': instance.domain,
      'port': instance.port,
      'protocol': instance.protocol,
      'username': instance.username,
      'createdAt': instance.createdAt.toIso8601String(),
      '__entity': instance.entity,
    };
