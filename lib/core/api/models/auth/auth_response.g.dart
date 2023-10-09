// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthResponse _$$_AuthResponseFromJson(Map<String, dynamic> json) =>
    _$_AuthResponse(
      refreshToken: json['refreshToken'] as String,
      token: json['token'] as String,
      tokenExpires: json['tokenExpires'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AuthResponseToJson(_$_AuthResponse instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'token': instance.token,
      'tokenExpires': instance.tokenExpires,
      'user': instance.user,
    };
