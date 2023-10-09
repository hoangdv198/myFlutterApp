// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream_viewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamViewer _$StreamViewerFromJson(Map<String, dynamic> json) {
  return _StreamViewer.fromJson(json);
}

/// @nodoc
mixin _$StreamViewer {
  String get viewerID => throw _privateConstructorUsedError;
  String get streamID => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__entity')
  String get entity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamViewerCopyWith<StreamViewer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamViewerCopyWith<$Res> {
  factory $StreamViewerCopyWith(
          StreamViewer value, $Res Function(StreamViewer) then) =
      _$StreamViewerCopyWithImpl<$Res, StreamViewer>;
  @useResult
  $Res call(
      {String viewerID,
      String streamID,
      String status,
      DateTime updatedAt,
      DateTime? deletedAt,
      @JsonKey(name: '__entity') String entity});
}

/// @nodoc
class _$StreamViewerCopyWithImpl<$Res, $Val extends StreamViewer>
    implements $StreamViewerCopyWith<$Res> {
  _$StreamViewerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewerID = null,
    Object? streamID = null,
    Object? status = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      viewerID: null == viewerID
          ? _value.viewerID
          : viewerID // ignore: cast_nullable_to_non_nullable
              as String,
      streamID: null == streamID
          ? _value.streamID
          : streamID // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StreamViewerCopyWith<$Res>
    implements $StreamViewerCopyWith<$Res> {
  factory _$$_StreamViewerCopyWith(
          _$_StreamViewer value, $Res Function(_$_StreamViewer) then) =
      __$$_StreamViewerCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String viewerID,
      String streamID,
      String status,
      DateTime updatedAt,
      DateTime? deletedAt,
      @JsonKey(name: '__entity') String entity});
}

/// @nodoc
class __$$_StreamViewerCopyWithImpl<$Res>
    extends _$StreamViewerCopyWithImpl<$Res, _$_StreamViewer>
    implements _$$_StreamViewerCopyWith<$Res> {
  __$$_StreamViewerCopyWithImpl(
      _$_StreamViewer _value, $Res Function(_$_StreamViewer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? viewerID = null,
    Object? streamID = null,
    Object? status = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? entity = null,
  }) {
    return _then(_$_StreamViewer(
      viewerID: null == viewerID
          ? _value.viewerID
          : viewerID // ignore: cast_nullable_to_non_nullable
              as String,
      streamID: null == streamID
          ? _value.streamID
          : streamID // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamViewer extends _StreamViewer {
  _$_StreamViewer(
      {required this.viewerID,
      required this.streamID,
      required this.status,
      required this.updatedAt,
      this.deletedAt,
      @JsonKey(name: '__entity') required this.entity})
      : super._();

  factory _$_StreamViewer.fromJson(Map<String, dynamic> json) =>
      _$$_StreamViewerFromJson(json);

  @override
  final String viewerID;
  @override
  final String streamID;
  @override
  final String status;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;
  @override
  @JsonKey(name: '__entity')
  final String entity;

  @override
  String toString() {
    return 'StreamViewer(viewerID: $viewerID, streamID: $streamID, status: $status, updatedAt: $updatedAt, deletedAt: $deletedAt, entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamViewer &&
            (identical(other.viewerID, viewerID) ||
                other.viewerID == viewerID) &&
            (identical(other.streamID, streamID) ||
                other.streamID == streamID) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, viewerID, streamID, status, updatedAt, deletedAt, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamViewerCopyWith<_$_StreamViewer> get copyWith =>
      __$$_StreamViewerCopyWithImpl<_$_StreamViewer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamViewerToJson(
      this,
    );
  }
}

abstract class _StreamViewer extends StreamViewer {
  factory _StreamViewer(
          {required final String viewerID,
          required final String streamID,
          required final String status,
          required final DateTime updatedAt,
          final DateTime? deletedAt,
          @JsonKey(name: '__entity') required final String entity}) =
      _$_StreamViewer;
  _StreamViewer._() : super._();

  factory _StreamViewer.fromJson(Map<String, dynamic> json) =
      _$_StreamViewer.fromJson;

  @override
  String get viewerID;
  @override
  String get streamID;
  @override
  String get status;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  @JsonKey(name: '__entity')
  String get entity;
  @override
  @JsonKey(ignore: true)
  _$$_StreamViewerCopyWith<_$_StreamViewer> get copyWith =>
      throw _privateConstructorUsedError;
}
