part of 'login_bloc.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState.initial() = Initial;
  const factory LoginState.loading() = Loading;
  const factory LoginState.success() = Success;
  const factory LoginState.firstLogin() = FirstLogin;
  const factory LoginState.failed({Failure error}) = Failed;
}
