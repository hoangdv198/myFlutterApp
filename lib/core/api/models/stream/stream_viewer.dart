import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_viewer.freezed.dart';
part 'stream_viewer.g.dart';

@freezed
class StreamViewer with _$StreamViewer {
  const StreamViewer._();

  factory StreamViewer({
    required String viewerID,
    required String streamID,
    required String status,
    required DateTime updatedAt,
    DateTime? deletedAt,
    @JsonKey(name: '__entity') required String entity,
  }) = _StreamViewer;

  factory StreamViewer.fromJson(Map<String, dynamic> json) =>
      _$StreamViewerFromJson(json);
}
