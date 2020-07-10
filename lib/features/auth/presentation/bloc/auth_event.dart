part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  const factory AuthEvent.appStart() = AppStarted;
  const factory AuthEvent.loggedIn() = LoggedIn;
  const factory AuthEvent.loggedOut() = LoggedOut;
  const factory AuthEvent.persistToken({String username, String password}) = PersistToken;
  const factory AuthEvent.deleteToken() = DeleteToken;
}
