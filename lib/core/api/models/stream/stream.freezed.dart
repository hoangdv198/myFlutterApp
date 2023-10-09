// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamModel _$StreamModelFromJson(Map<String, dynamic> json) {
  return _StreamModel.fromJson(json);
}

/// @nodoc
mixin _$StreamModel {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  DateTime? get deletedAt => throw _privateConstructorUsedError;
  Cluster get cluster => throw _privateConstructorUsedError;
  List<StreamViewer> get streamViewers => throw _privateConstructorUsedError;
  @JsonKey(name: '__entity')
  String get entity => throw _privateConstructorUsedError;
  String get hlsUrl => throw _privateConstructorUsedError;
  String get flvUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamModelCopyWith<StreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamModelCopyWith<$Res> {
  factory $StreamModelCopyWith(
          StreamModel value, $Res Function(StreamModel) then) =
      _$StreamModelCopyWithImpl<$Res, StreamModel>;
  @useResult
  $Res call(
      {String id,
      String name,
      String address,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt,
      Cluster cluster,
      List<StreamViewer> streamViewers,
      @JsonKey(name: '__entity') String entity,
      String hlsUrl,
      String flvUrl});

  $ClusterCopyWith<$Res> get cluster;
}

/// @nodoc
class _$StreamModelCopyWithImpl<$Res, $Val extends StreamModel>
    implements $StreamModelCopyWith<$Res> {
  _$StreamModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? cluster = null,
    Object? streamViewers = null,
    Object? entity = null,
    Object? hlsUrl = null,
    Object? flvUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cluster: null == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as Cluster,
      streamViewers: null == streamViewers
          ? _value.streamViewers
          : streamViewers // ignore: cast_nullable_to_non_nullable
              as List<StreamViewer>,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      hlsUrl: null == hlsUrl
          ? _value.hlsUrl
          : hlsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      flvUrl: null == flvUrl
          ? _value.flvUrl
          : flvUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ClusterCopyWith<$Res> get cluster {
    return $ClusterCopyWith<$Res>(_value.cluster, (value) {
      return _then(_value.copyWith(cluster: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_StreamModelCopyWith<$Res>
    implements $StreamModelCopyWith<$Res> {
  factory _$$_StreamModelCopyWith(
          _$_StreamModel value, $Res Function(_$_StreamModel) then) =
      __$$_StreamModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String address,
      String status,
      DateTime createdAt,
      DateTime updatedAt,
      DateTime? deletedAt,
      Cluster cluster,
      List<StreamViewer> streamViewers,
      @JsonKey(name: '__entity') String entity,
      String hlsUrl,
      String flvUrl});

  @override
  $ClusterCopyWith<$Res> get cluster;
}

/// @nodoc
class __$$_StreamModelCopyWithImpl<$Res>
    extends _$StreamModelCopyWithImpl<$Res, _$_StreamModel>
    implements _$$_StreamModelCopyWith<$Res> {
  __$$_StreamModelCopyWithImpl(
      _$_StreamModel _value, $Res Function(_$_StreamModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? status = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? cluster = null,
    Object? streamViewers = null,
    Object? entity = null,
    Object? hlsUrl = null,
    Object? flvUrl = null,
  }) {
    return _then(_$_StreamModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cluster: null == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as Cluster,
      streamViewers: null == streamViewers
          ? _value._streamViewers
          : streamViewers // ignore: cast_nullable_to_non_nullable
              as List<StreamViewer>,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
      hlsUrl: null == hlsUrl
          ? _value.hlsUrl
          : hlsUrl // ignore: cast_nullable_to_non_nullable
              as String,
      flvUrl: null == flvUrl
          ? _value.flvUrl
          : flvUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamModel extends _StreamModel {
  _$_StreamModel(
      {required this.id,
      required this.name,
      required this.address,
      required this.status,
      required this.createdAt,
      required this.updatedAt,
      this.deletedAt,
      required this.cluster,
      required final List<StreamViewer> streamViewers,
      @JsonKey(name: '__entity') required this.entity,
      required this.hlsUrl,
      required this.flvUrl})
      : _streamViewers = streamViewers,
        super._();

  factory _$_StreamModel.fromJson(Map<String, dynamic> json) =>
      _$$_StreamModelFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String status;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime? deletedAt;
  @override
  final Cluster cluster;
  final List<StreamViewer> _streamViewers;
  @override
  List<StreamViewer> get streamViewers {
    if (_streamViewers is EqualUnmodifiableListView) return _streamViewers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_streamViewers);
  }

  @override
  @JsonKey(name: '__entity')
  final String entity;
  @override
  final String hlsUrl;
  @override
  final String flvUrl;

  @override
  String toString() {
    return 'StreamModel(id: $id, name: $name, address: $address, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, cluster: $cluster, streamViewers: $streamViewers, entity: $entity, hlsUrl: $hlsUrl, flvUrl: $flvUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.cluster, cluster) || other.cluster == cluster) &&
            const DeepCollectionEquality()
                .equals(other._streamViewers, _streamViewers) &&
            (identical(other.entity, entity) || other.entity == entity) &&
            (identical(other.hlsUrl, hlsUrl) || other.hlsUrl == hlsUrl) &&
            (identical(other.flvUrl, flvUrl) || other.flvUrl == flvUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      address,
      status,
      createdAt,
      updatedAt,
      deletedAt,
      cluster,
      const DeepCollectionEquality().hash(_streamViewers),
      entity,
      hlsUrl,
      flvUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamModelCopyWith<_$_StreamModel> get copyWith =>
      __$$_StreamModelCopyWithImpl<_$_StreamModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamModelToJson(
      this,
    );
  }
}

abstract class _StreamModel extends StreamModel {
  factory _StreamModel(
      {required final String id,
      required final String name,
      required final String address,
      required final String status,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      final DateTime? deletedAt,
      required final Cluster cluster,
      required final List<StreamViewer> streamViewers,
      @JsonKey(name: '__entity') required final String entity,
      required final String hlsUrl,
      required final String flvUrl}) = _$_StreamModel;
  _StreamModel._() : super._();

  factory _StreamModel.fromJson(Map<String, dynamic> json) =
      _$_StreamModel.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get address;
  @override
  String get status;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  DateTime? get deletedAt;
  @override
  Cluster get cluster;
  @override
  List<StreamViewer> get streamViewers;
  @override
  @JsonKey(name: '__entity')
  String get entity;
  @override
  String get hlsUrl;
  @override
  String get flvUrl;
  @override
  @JsonKey(ignore: true)
  _$$_StreamModelCopyWith<_$_StreamModel> get copyWith =>
      throw _privateConstructorUsedError;
}
