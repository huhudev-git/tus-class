import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/show_mode.dart';
import '../../domain/usecase/get_show_mode_usecase.dart' as gsmu;
import '../../domain/usecase/save_show_mode_usecase.dart' as ssmu;

part 'curriculum_show_mode_bloc.freezed.dart';
part 'curriculum_show_mode_event.dart';
part 'curriculum_show_mode_state.dart';

@injectable
class CurriculumShowModeBloc extends Bloc<CurriculumShowModeEvent, CurriculumShowModeState> {
  final gsmu.GetShowModeUsecase _getShowModeUsecase;
  final ssmu.SaveShowModeUsecase _saveShowModeUsecase;

  CurriculumShowModeBloc({
    @required ssmu.SaveShowModeUsecase saveShowModeUsecase,
    @required gsmu.GetShowModeUsecase getShowModeUsecase,
  })  : assert(getShowModeUsecase != null),
        _saveShowModeUsecase = saveShowModeUsecase,
        _getShowModeUsecase = getShowModeUsecase;
  @override
  CurriculumShowModeState get initialState => CurriculumShowModeState.initial();

  @override
  Stream<CurriculumShowModeState> mapEventToState(
    CurriculumShowModeEvent event,
  ) async* {
    yield* event.map(
      init: _mapInitEvent,
      switchShowMode: _mapSwitchShowModeEvent,
    );
  }

  Stream<CurriculumShowModeState> _mapInitEvent(Init event) async* {
    final failureOrMode = await _getShowModeUsecase(NoParams());
    yield failureOrMode.fold(
      (failure) => CurriculumShowModeState.loaded(mode: ShowMode.regular()),
      (mode) => CurriculumShowModeState.loaded(mode: mode),
    );
  }

  Stream<CurriculumShowModeState> _mapSwitchShowModeEvent(SwitchShowMode event) async* {
    yield* state.maybeMap(
      loaded: (state) async* {
        final mode = state.mode.map(
          regular: (_) => const ShowMode.weekend(),
          weekend: (_) => const ShowMode.night(),
          night: (_) => const ShowMode.nightWeekend(),
          nightWeekend: (_) => const ShowMode.regular(),
        );

        // not check error, may has better solvtion
        await _saveShowModeUsecase(ssmu.Params(mode: mode));

        yield state.copyWith(mode: mode);
      },
      orElse: () async* {
        yield state;
      },
    );
  }
}
