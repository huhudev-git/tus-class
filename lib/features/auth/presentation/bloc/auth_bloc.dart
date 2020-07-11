import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../login/domain/usecases/login_usecase.dart' as lu;
import '../../domain/usecases/delete_token_usecase.dart' as dtu;
import '../../domain/usecases/get_token_usecase.dart' as gtu;
import '../../domain/usecases/persist_token_usecase.dart' as ptu;

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final dtu.DeleteTokenUsecase _deleteTokenUsecase;
  final gtu.GetTokenUsecase _getTokenUsecase;
  final ptu.PersistTokenUsecase _persistTokenUsecase;
  final lu.LoginUsecase _loginUsecase;

  AuthBloc({
    @required dtu.DeleteTokenUsecase deleteTokenUsecase,
    @required gtu.GetTokenUsecase getTokenUsecase,
    @required ptu.PersistTokenUsecase persistTokenUsecase,
    @required lu.LoginUsecase loginUsecase,
  })  : assert(deleteTokenUsecase != null),
        assert(getTokenUsecase != null),
        assert(persistTokenUsecase != null),
        assert(loginUsecase != null),
        _deleteTokenUsecase = deleteTokenUsecase,
        _getTokenUsecase = getTokenUsecase,
        _persistTokenUsecase = persistTokenUsecase,
        _loginUsecase = loginUsecase,
        super(AuthState.initial());

  @override
  Stream<AuthState> mapEventToState(
    AuthEvent event,
  ) async* {
    yield* event.map(
      appStart: _mapAppStartedEvent,
      loggedIn: _mapLoggedInEvent,
      loggedOut: _mapLoggedOutEvent,
      persistToken: _mapPersistTokenEvent,
      deleteToken: _mapDeleteTokenEvent,
    );
  }

  Stream<AuthState> _mapAppStartedEvent(AppStarted event) async* {
    // for splash page
    await Future.delayed(const Duration(seconds: 1));

    final failureOrToken = await _getTokenUsecase(NoParams());
    yield* failureOrToken.fold(
      (failure) async* {
        yield const AuthState.unauthed();
      },
      (token) async* {
        // login
        final failureOrLoginResult = await _loginUsecase(lu.Params(
          username: token.username,
          password: token.password,
        ));

        yield* failureOrLoginResult.fold(
          (failure) async* {
            // auto login failed by invalid password
            if (failure is InvalidPasswordFailure) {
              await _deleteTokenUsecase(NoParams());
            }
            yield AuthState.failed(error: failure);
          },
          (loginResult) async* {
            // if login success
            if (loginResult.isAuth) {
              yield const AuthState.authed();
            } else {
              yield const AuthState.unauthed(); // unknown reason
            }
          },
        );
      },
    );
  }

  Stream<AuthState> _mapLoggedInEvent(LoggedIn event) async* {
    yield const AuthState.authed();
  }

  Stream<AuthState> _mapLoggedOutEvent(LoggedOut event) async* {
    yield const AuthState.unauthed();
  }

  Stream<AuthState> _mapPersistTokenEvent(PersistToken event) async* {
    await _persistTokenUsecase(ptu.Params(username: event.username, password: event.password));
    yield const AuthState.authed();
  }

  Stream<AuthState> _mapDeleteTokenEvent(DeleteToken event) async* {
    await _deleteTokenUsecase(NoParams());
  }
}
