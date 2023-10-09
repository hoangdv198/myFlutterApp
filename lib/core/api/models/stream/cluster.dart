import 'package:freezed_annotation/freezed_annotation.dart';

part 'cluster.freezed.dart';
part 'cluster.g.dart';

@freezed
class Cluster with _$Cluster {
  const Cluster._();

  factory Cluster({
    required int id,
    required String domain,
    int? port,
    required String protocol,
    String? username,
    required DateTime createdAt,
    @JsonKey(name: '__entity')
    required String entity,
  }) = _Cluster;

  factory Cluster.fromJson(Map<String, dynamic> json) =>
      _$ClusterFromJson(json);
}
