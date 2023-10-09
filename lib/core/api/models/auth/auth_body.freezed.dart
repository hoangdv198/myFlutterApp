// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthBody _$AuthBodyFromJson(Map<String, dynamic> json) {
  return _AuthBody.fromJson(json);
}

/// @nodoc
mixin _$AuthBody {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthBodyCopyWith<AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBodyCopyWith<$Res> {
  factory $AuthBodyCopyWith(AuthBody value, $Res Function(AuthBody) then) =
      _$AuthBodyCopyWithImpl<$Res, AuthBody>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class _$AuthBodyCopyWithImpl<$Res, $Val extends AuthBody>
    implements $AuthBodyCopyWith<$Res> {
  _$AuthBodyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthBodyCopyWith<$Res> implements $AuthBodyCopyWith<$Res> {
  factory _$$_AuthBodyCopyWith(
          _$_AuthBody value, $Res Function(_$_AuthBody) then) =
      __$$_AuthBodyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$_AuthBodyCopyWithImpl<$Res>
    extends _$AuthBodyCopyWithImpl<$Res, _$_AuthBody>
    implements _$$_AuthBodyCopyWith<$Res> {
  __$$_AuthBodyCopyWithImpl(
      _$_AuthBody _value, $Res Function(_$_AuthBody) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$_AuthBody(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthBody extends _AuthBody with DiagnosticableTreeMixin {
  _$_AuthBody({required this.email, required this.password}) : super._();

  factory _$_AuthBody.fromJson(Map<String, dynamic> json) =>
      _$$_AuthBodyFromJson(json);

  @override
  final String email;
  @override
  final String password;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthBody(email: $email, password: $password)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthBody'))
      ..add(DiagnosticsProperty('email', email))
      ..add(DiagnosticsProperty('password', password));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthBody &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthBodyCopyWith<_$_AuthBody> get copyWith =>
      __$$_AuthBodyCopyWithImpl<_$_AuthBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthBodyToJson(
      this,
    );
  }
}

abstract class _AuthBody extends AuthBody {
  factory _AuthBody(
      {required final String email,
      required final String password}) = _$_AuthBody;
  _AuthBody._() : super._();

  factory _AuthBody.fromJson(Map<String, dynamic> json) = _$_AuthBody.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_AuthBodyCopyWith<_$_AuthBody> get copyWith =>
      throw _privateConstructorUsedError;
}
