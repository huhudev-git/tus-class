import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/login_result.dart';

part 'login_result_model.freezed.dart';
part 'login_result_model.g.dart';

@freezed
abstract class LoginResultModel implements _$LoginResultModel {
  const factory LoginResultModel({
    @required bool isAuth,
    @required String name,
    @required String error,
  }) = _LoginResultModel;
  const LoginResultModel._();

  LoginResult toDomain() {
    return LoginResult(
      isAuth: isAuth,
      name: name,
      error: error,
    );
  }

  factory LoginResultModel.fromJson(Map<String, dynamic> json) => _$LoginResultModelFromJson(json);
}
