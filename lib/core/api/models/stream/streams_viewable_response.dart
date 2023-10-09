import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_flutter_app/core/api/models/stream/stream.dart';

part 'streams_viewable_response.freezed.dart';
part 'streams_viewable_response.g.dart';

@freezed
class GetStreamsViewableResponse with _$GetStreamsViewableResponse {
  const GetStreamsViewableResponse._();

  @JsonSerializable(explicitToJson: true)
  factory GetStreamsViewableResponse({
    required int total,
    required List<StreamModel> data,
  }) = _GetStreamsViewableResponse;

  factory GetStreamsViewableResponse.fromJson(Map<String, dynamic> json) =>
      _$GetStreamsViewableResponseFromJson(json);
}


