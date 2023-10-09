// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'streams_viewable_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GetStreamsViewableResponse _$GetStreamsViewableResponseFromJson(
    Map<String, dynamic> json) {
  return _GetStreamsViewableResponse.fromJson(json);
}

/// @nodoc
mixin _$GetStreamsViewableResponse {
  int get total => throw _privateConstructorUsedError;
  List<StreamModel> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetStreamsViewableResponseCopyWith<GetStreamsViewableResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStreamsViewableResponseCopyWith<$Res> {
  factory $GetStreamsViewableResponseCopyWith(GetStreamsViewableResponse value,
          $Res Function(GetStreamsViewableResponse) then) =
      _$GetStreamsViewableResponseCopyWithImpl<$Res,
          GetStreamsViewableResponse>;
  @useResult
  $Res call({int total, List<StreamModel> data});
}

/// @nodoc
class _$GetStreamsViewableResponseCopyWithImpl<$Res,
        $Val extends GetStreamsViewableResponse>
    implements $GetStreamsViewableResponseCopyWith<$Res> {
  _$GetStreamsViewableResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GetStreamsViewableResponseCopyWith<$Res>
    implements $GetStreamsViewableResponseCopyWith<$Res> {
  factory _$$_GetStreamsViewableResponseCopyWith(
          _$_GetStreamsViewableResponse value,
          $Res Function(_$_GetStreamsViewableResponse) then) =
      __$$_GetStreamsViewableResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, List<StreamModel> data});
}

/// @nodoc
class __$$_GetStreamsViewableResponseCopyWithImpl<$Res>
    extends _$GetStreamsViewableResponseCopyWithImpl<$Res,
        _$_GetStreamsViewableResponse>
    implements _$$_GetStreamsViewableResponseCopyWith<$Res> {
  __$$_GetStreamsViewableResponseCopyWithImpl(
      _$_GetStreamsViewableResponse _value,
      $Res Function(_$_GetStreamsViewableResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? data = null,
  }) {
    return _then(_$_GetStreamsViewableResponse(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<StreamModel>,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_GetStreamsViewableResponse extends _GetStreamsViewableResponse {
  _$_GetStreamsViewableResponse(
      {required this.total, required final List<StreamModel> data})
      : _data = data,
        super._();

  factory _$_GetStreamsViewableResponse.fromJson(Map<String, dynamic> json) =>
      _$$_GetStreamsViewableResponseFromJson(json);

  @override
  final int total;
  final List<StreamModel> _data;
  @override
  List<StreamModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'GetStreamsViewableResponse(total: $total, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetStreamsViewableResponse &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetStreamsViewableResponseCopyWith<_$_GetStreamsViewableResponse>
      get copyWith => __$$_GetStreamsViewableResponseCopyWithImpl<
          _$_GetStreamsViewableResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GetStreamsViewableResponseToJson(
      this,
    );
  }
}

abstract class _GetStreamsViewableResponse extends GetStreamsViewableResponse {
  factory _GetStreamsViewableResponse(
      {required final int total,
      required final List<StreamModel> data}) = _$_GetStreamsViewableResponse;
  _GetStreamsViewableResponse._() : super._();

  factory _GetStreamsViewableResponse.fromJson(Map<String, dynamic> json) =
      _$_GetStreamsViewableResponse.fromJson;

  @override
  int get total;
  @override
  List<StreamModel> get data;
  @override
  @JsonKey(ignore: true)
  _$$_GetStreamsViewableResponseCopyWith<_$_GetStreamsViewableResponse>
      get copyWith => throw _privateConstructorUsedError;
}
