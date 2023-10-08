import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, Object?> json)
      => _$UserModelFromJson(json);
}