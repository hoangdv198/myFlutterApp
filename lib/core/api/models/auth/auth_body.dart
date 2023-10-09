

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'auth_body.freezed.dart';
part 'auth_body.g.dart';

@freezed
class AuthBody with _$AuthBody {
  const AuthBody._();

  factory AuthBody({
    required String email,
    required String password,
  }) = _AuthBody;

  factory AuthBody.fromJson(Map<String, dynamic> json) =>
      _$AuthBodyFromJson(json);
}
