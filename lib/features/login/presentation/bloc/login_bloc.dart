import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecases/is_fisrt_run_usecase.dart';
import '../../domain/usecases/login_usecase.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUsecase _loginUsecase;
  final IsFirstRunUsecase _isFirstRunUsecase;

  LoginBloc({
    @required LoginUsecase loginUsecase,
    @required IsFirstRunUsecase isFirstRunUsecase,
  })  : assert(loginUsecase != null),
        assert(isFirstRunUsecase != null),
        _loginUsecase = loginUsecase,
        _isFirstRunUsecase = isFirstRunUsecase,
        super(LoginState.initial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    yield* _mapLoginAuthEvent(event as Login);
  }

  Stream<LoginState> _mapLoginAuthEvent(Login event) async* {
    yield const LoginState.loading();
    final failureOrLoginResult = await _loginUsecase(Params(username: event.username, password: event.password));
    final failureOrIsFirstRun = await _isFirstRunUsecase(NoParams());

    yield failureOrIsFirstRun.fold(
      (failure) => failureOrLoginResult.fold(
        (failure) => LoginState.failed(error: failure),
        (loginResult) => const LoginState.success(),
      ),
      (isFirstRun) => failureOrLoginResult.fold(
        (failure) => LoginState.failed(error: failure),
        (loginResult) => isFirstRun ? const LoginState.firstLogin() : const LoginState.success(),
      ),
    );
  }
}
