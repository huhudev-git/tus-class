import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/setting.dart';
import '../../domain/usecase/delete_auth_token_usecase.dart' as datu;
import '../../domain/usecase/delete_cache_files_usecase.dart' as dcfu;
import '../../domain/usecase/init_setting_usecase.dart' as isu;
import '../../domain/usecase/set_auth_token_usecase.dart' as satu;
import '../../domain/usecase/set_auto_login_usecase.dart' as salu;

part 'setting_bloc.freezed.dart';
part 'setting_event.dart';
part 'setting_state.dart';

@injectable
class SettingBloc extends Bloc<SettingEvent, SettingState> {
  final isu.InitSettingUsecase _initSettingUsecase;
  final salu.SetAutoLoginUsecase _setAutoLoginUsecase;
  final datu.DeleteAuthTokenUsecase _deleteAuthTokenUsecase;
  final satu.SetAuthTokenUsecase _setAuthTokenUsecase;
  final dcfu.DeleteCacheFilesUsecase _deleteCacheFilesUsecase;

  SettingBloc({
    @required isu.InitSettingUsecase initSettingUsecase,
    @required salu.SetAutoLoginUsecase setAutoLoginUsecase,
    @required datu.DeleteAuthTokenUsecase deleteAuthTokenUsecase,
    @required satu.SetAuthTokenUsecase setAuthTokenUsecase,
    @required dcfu.DeleteCacheFilesUsecase deleteCacheFilesUsecase,
  })  : assert(initSettingUsecase != null),
        assert(setAutoLoginUsecase != null),
        assert(deleteAuthTokenUsecase != null),
        assert(setAuthTokenUsecase != null),
        assert(deleteCacheFilesUsecase != null),
        _initSettingUsecase = initSettingUsecase,
        _setAutoLoginUsecase = setAutoLoginUsecase,
        _deleteAuthTokenUsecase = deleteAuthTokenUsecase,
        _setAuthTokenUsecase = setAuthTokenUsecase,
        _deleteCacheFilesUsecase = deleteCacheFilesUsecase,
        super(SettingState.initial());

  @override
  Stream<SettingState> mapEventToState(
    SettingEvent event,
  ) async* {
    yield* event.map(
      init: _mapInitEvent,
      setAutoLogin: _mapSetAutoLoginEvent,
      deleteAuthToken: _mapDeleteAuthTokenEvent,
      setAuthToken: _mapSetAuthTokenEvent,
      deleteCacheFiles: _mapdeleteCacheFilesEvent,
    );
  }

  Stream<SettingState> _mapInitEvent(Init event) async* {
    final failureOrSetting = await _initSettingUsecase(NoParams());
    yield failureOrSetting.fold(
      (failure) => state.copyWith(error: failure),
      (setting) => SettingState(setting: setting),
    );
  }

  Stream<SettingState> _mapSetAutoLoginEvent(SetAutoLogin event) async* {
    final failureOrSuccess = await _setAutoLoginUsecase(salu.Params(status: event.status));
    yield failureOrSuccess.fold(
      (failure) => state.copyWith(error: failure),
      (right) => state.copyWith(
        error: null,
        setting: state.setting.copyWith(
          isAutoLogin: event.status,
        ),
      ),
    );
  }

  Stream<SettingState> _mapDeleteAuthTokenEvent(DeleteAuthToken event) async* {
    final failureOrSuccess = await _deleteAuthTokenUsecase(NoParams());
    yield failureOrSuccess.fold(
      (failure) => state.copyWith(error: failure),
      (right) => state.copyWith(
        error: null,
        setting: state.setting.copyWith(
          isAutoLogin: false,
          hasToken: false,
        ),
      ),
    );
  }

  Stream<SettingState> _mapSetAuthTokenEvent(SetAuthToken event) async* {
    final failureOrSuccess = await _setAuthTokenUsecase(satu.Params(username: event.username, password: event.password));
    yield failureOrSuccess.fold(
      (failure) => state.copyWith(error: failure),
      (right) => state.copyWith(
        error: null,
        setting: state.setting.copyWith(
          isAutoLogin: true,
          hasToken: true,
        ),
      ),
    );
  }

  Stream<SettingState> _mapdeleteCacheFilesEvent(DeleteCacheFiles event) async* {
    final failureOrSuccess = await _deleteCacheFilesUsecase(NoParams());
    yield failureOrSuccess.fold(
      (failure) => state.copyWith(error: failure),
      (right) => state.copyWith(
        error: null,
        setting: state.setting.copyWith(),
      ),
    );
  }
}
