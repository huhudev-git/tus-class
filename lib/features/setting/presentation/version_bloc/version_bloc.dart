import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/usecase/version_check_usecase.dart';

part 'version_bloc.freezed.dart';
part 'version_event.dart';
part 'version_state.dart';

@injectable
class VersionBloc extends Bloc<VersionEvent, VersionState> {
  final VersionCheckUsecase _versionCheckUsecase;

  VersionBloc({
    @required VersionCheckUsecase versionCheckUsecase,
  })  : assert(versionCheckUsecase != null),
        _versionCheckUsecase = versionCheckUsecase,
        super(VersionState.initial());

  @override
  Stream<VersionState> mapEventToState(
    VersionEvent event,
  ) async* {
    yield* _mapCheckEvent(event as Check);
  }

  Stream<VersionState> _mapCheckEvent(Check event) async* {
    yield VersionState.loading();
    final failureOrHasUpdate = await _versionCheckUsecase(NoParams());
    yield failureOrHasUpdate.fold(
      (failure) => VersionState.failed(error: failure),
      (hasUpdate) => VersionState.loaded(hasUpdate: hasUpdate),
    );
  }
}
