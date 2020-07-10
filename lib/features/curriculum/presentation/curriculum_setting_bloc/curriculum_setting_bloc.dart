import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/curriculum_setting.dart';
import '../../domain/usecase/delete_curriculum_setting_usecase.dart' as dcsu;
import '../../domain/usecase/get_all_curriculum_setting_usecase.dart' as gacs;
import '../../domain/usecase/get_curriculum_setting_usecase.dart' as gcs;
import '../../domain/usecase/save_curriculum_setting_usecase.dart' as scsu;

part 'curriculum_setting_bloc.freezed.dart';
part 'curriculum_setting_event.dart';
part 'curriculum_setting_state.dart';

@injectable
class CurriculumSettingBloc extends Bloc<CurriculumSettingEvent, CurriculumSettingState> {
  final gcs.GetCurriculumSettingUsecase _getCurriculumSettingUsecase;
  final gacs.GetAllCurriculumSettingUsecase _getAllCurriculumSettingUsecase;
  final scsu.SaveCurriculumSettingUsecase _saveCurriculumSettingUsecase;
  final dcsu.DeleteCurriculumSettingUsecase _deleteCurriculumSettingUsecase;

  CurriculumSettingBloc({
    @required gcs.GetCurriculumSettingUsecase getCurriculumSettingUsecase,
    @required gacs.GetAllCurriculumSettingUsecase getAllCurriculumSettingUsecase,
    @required scsu.SaveCurriculumSettingUsecase saveCurriculumSettingUsecase,
    @required dcsu.DeleteCurriculumSettingUsecase deleteCurriculumSettingUsecase,
  })  : assert(getCurriculumSettingUsecase != null),
        assert(getAllCurriculumSettingUsecase != null),
        assert(saveCurriculumSettingUsecase != null),
        assert(deleteCurriculumSettingUsecase != null),
        _getCurriculumSettingUsecase = getCurriculumSettingUsecase,
        _getAllCurriculumSettingUsecase = getAllCurriculumSettingUsecase,
        _saveCurriculumSettingUsecase = saveCurriculumSettingUsecase,
        _deleteCurriculumSettingUsecase = deleteCurriculumSettingUsecase;

  @override
  CurriculumSettingState get initialState => CurriculumSettingState.initial();

  @override
  Stream<CurriculumSettingState> mapEventToState(
    CurriculumSettingEvent event,
  ) async* {
    yield* event.map(
      getAllCurriculumSetting: _mapGetAllCurriculumSettingEvent,
      deleteCurriculumSetting: _mapDeleteCurriculumSettingEvent,
      saveCurriculumSetting: _mapSaveCurriculumSettingEvent,
      getCurriculumSetting: _mapGetCurriculumSettingEvent,
    );
  }

  Stream<CurriculumSettingState> _mapGetCurriculumSettingEvent(GetCurriculumSetting event) async* {
    final setting = await _getCurriculumSettingUsecase(gcs.Params(code: event.code, course: event.course));

    yield setting.fold(
      (failure) => state,
      (setting) => state.maybeMap(
        orElse: () => state,
        loaded: (state) {
          state.settings.removeWhere((e) => e == setting);
          state.settings.add(setting);
          return CurriculumSettingState.loaded(settings: state.settings);
        },
      ),
    );
  }

  Stream<CurriculumSettingState> _mapGetAllCurriculumSettingEvent(GetAllCurriculumSetting event) async* {
    yield const CurriculumSettingState.loaded();

    final failureOrSettings = await _getAllCurriculumSettingUsecase(NoParams());
    yield failureOrSettings.fold(
      (failure) => CurriculumSettingState.loaded(settings: []),
      (settings) => CurriculumSettingState.loaded(settings: settings),
    );
  }

  Stream<CurriculumSettingState> _mapDeleteCurriculumSettingEvent(DeleteCurriculumSetting event) async* {
    await _deleteCurriculumSettingUsecase(dcsu.Params(setting: event.setting));
    yield state.maybeMap(
      orElse: () => state,
      loaded: (state) {
        state.settings.removeWhere((e) => e == event.setting);
        return CurriculumSettingState.loaded(settings: state.settings);
      },
    );
  }

  Stream<CurriculumSettingState> _mapSaveCurriculumSettingEvent(SaveCurriculumSetting event) async* {
    await _saveCurriculumSettingUsecase(scsu.Params(setting: event.setting));
    yield state.maybeMap(
      orElse: () => state,
      loaded: (state) {
        final List<CurriculumSetting> settings = [...state.settings];
        settings.removeWhere(
          (e) {
            if (event.setting.code != null && event.setting.code.isNotEmpty) {
              return e.code == event.setting.code;
            } else {
              return e.course == event.setting.course;
            }
          },
        );
        settings.add(event.setting);
        return CurriculumSettingState.loaded(settings: settings);
      },
    );
  }
}
