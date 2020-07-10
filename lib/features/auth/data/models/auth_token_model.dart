import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/auth_token.dart';

part 'auth_token_model.freezed.dart';
part 'auth_token_model.g.dart';

@freezed
abstract class AuthTokenModel implements _$AuthTokenModel {
  const factory AuthTokenModel({
    @required String username,
    @required String password,
  }) = _AuthTokenModel;
  const AuthTokenModel._();

  AuthToken toDomain() {
    return AuthToken(
      username: username,
      password: password,
    );
  }

  factory AuthTokenModel.fromJson(Map<String, dynamic> json) => _$AuthTokenModelFromJson(json);
}
