part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authed() = Authed;
  const factory AuthState.unauthed() = Unauthed;
  const factory AuthState.failed({Failure error}) = Failed;
}
