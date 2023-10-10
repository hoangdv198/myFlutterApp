

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_app/core/api/models/auth/user.dart';
import 'package:my_flutter_app/core/api/models/stream/cluster.dart';
import 'package:my_flutter_app/core/api/models/stream/stream_viewer.dart';

part 'stream.freezed.dart';
part 'stream.g.dart';

@freezed
class StreamModel with _$StreamModel {
  const StreamModel._();

  factory StreamModel({
    required String id,
    required String name,
    required String address,
    required String status,
    required DateTime createdAt,
    required DateTime updatedAt,
    required User createdBy ,
    DateTime? deletedAt,
    Cluster? cluster,
    required List<StreamViewer> streamViewers,
    @JsonKey(name: '__entity',includeIfNull: false)
    required String entity,
    required String hlsUrl,
    required String flvUrl,
  }) = _StreamModel;

  factory StreamModel.fromJson(Map<String, dynamic> json) => _$StreamModelFromJson(json);
}