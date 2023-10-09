// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cluster.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Cluster _$ClusterFromJson(Map<String, dynamic> json) {
  return _Cluster.fromJson(json);
}

/// @nodoc
mixin _$Cluster {
  int get id => throw _privateConstructorUsedError;
  String get domain => throw _privateConstructorUsedError;
  int? get port => throw _privateConstructorUsedError;
  String get protocol => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: '__entity')
  String get entity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClusterCopyWith<Cluster> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClusterCopyWith<$Res> {
  factory $ClusterCopyWith(Cluster value, $Res Function(Cluster) then) =
      _$ClusterCopyWithImpl<$Res, Cluster>;
  @useResult
  $Res call(
      {int id,
      String domain,
      int? port,
      String protocol,
      String? username,
      DateTime createdAt,
      @JsonKey(name: '__entity') String entity});
}

/// @nodoc
class _$ClusterCopyWithImpl<$Res, $Val extends Cluster>
    implements $ClusterCopyWith<$Res> {
  _$ClusterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? domain = null,
    Object? port = freezed,
    Object? protocol = null,
    Object? username = freezed,
    Object? createdAt = null,
    Object? entity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClusterCopyWith<$Res> implements $ClusterCopyWith<$Res> {
  factory _$$_ClusterCopyWith(
          _$_Cluster value, $Res Function(_$_Cluster) then) =
      __$$_ClusterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String domain,
      int? port,
      String protocol,
      String? username,
      DateTime createdAt,
      @JsonKey(name: '__entity') String entity});
}

/// @nodoc
class __$$_ClusterCopyWithImpl<$Res>
    extends _$ClusterCopyWithImpl<$Res, _$_Cluster>
    implements _$$_ClusterCopyWith<$Res> {
  __$$_ClusterCopyWithImpl(_$_Cluster _value, $Res Function(_$_Cluster) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? domain = null,
    Object? port = freezed,
    Object? protocol = null,
    Object? username = freezed,
    Object? createdAt = null,
    Object? entity = null,
  }) {
    return _then(_$_Cluster(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      domain: null == domain
          ? _value.domain
          : domain // ignore: cast_nullable_to_non_nullable
              as String,
      port: freezed == port
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int?,
      protocol: null == protocol
          ? _value.protocol
          : protocol // ignore: cast_nullable_to_non_nullable
              as String,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      entity: null == entity
          ? _value.entity
          : entity // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cluster extends _Cluster {
  _$_Cluster(
      {required this.id,
      required this.domain,
      this.port,
      required this.protocol,
      this.username,
      required this.createdAt,
      @JsonKey(name: '__entity') required this.entity})
      : super._();

  factory _$_Cluster.fromJson(Map<String, dynamic> json) =>
      _$$_ClusterFromJson(json);

  @override
  final int id;
  @override
  final String domain;
  @override
  final int? port;
  @override
  final String protocol;
  @override
  final String? username;
  @override
  final DateTime createdAt;
  @override
  @JsonKey(name: '__entity')
  final String entity;

  @override
  String toString() {
    return 'Cluster(id: $id, domain: $domain, port: $port, protocol: $protocol, username: $username, createdAt: $createdAt, entity: $entity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cluster &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.domain, domain) || other.domain == domain) &&
            (identical(other.port, port) || other.port == port) &&
            (identical(other.protocol, protocol) ||
                other.protocol == protocol) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.entity, entity) || other.entity == entity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, domain, port, protocol, username, createdAt, entity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClusterCopyWith<_$_Cluster> get copyWith =>
      __$$_ClusterCopyWithImpl<_$_Cluster>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ClusterToJson(
      this,
    );
  }
}

abstract class _Cluster extends Cluster {
  factory _Cluster(
      {required final int id,
      required final String domain,
      final int? port,
      required final String protocol,
      final String? username,
      required final DateTime createdAt,
      @JsonKey(name: '__entity') required final String entity}) = _$_Cluster;
  _Cluster._() : super._();

  factory _Cluster.fromJson(Map<String, dynamic> json) = _$_Cluster.fromJson;

  @override
  int get id;
  @override
  String get domain;
  @override
  int? get port;
  @override
  String get protocol;
  @override
  String? get username;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(name: '__entity')
  String get entity;
  @override
  @JsonKey(ignore: true)
  _$$_ClusterCopyWith<_$_Cluster> get copyWith =>
      throw _privateConstructorUsedError;
}
