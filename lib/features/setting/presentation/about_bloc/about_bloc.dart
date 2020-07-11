import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../domain/entities/about.dart';
import '../../domain/usecase/init_about_usecase.dart';

part 'about_bloc.freezed.dart';
part 'about_event.dart';
part 'about_state.dart';

@injectable
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  final InitAboutUsecase _initAboutUsecase;

  AboutBloc({
    @required InitAboutUsecase initAboutUsecase,
  })  : assert(initAboutUsecase != null),
        _initAboutUsecase = initAboutUsecase,
        super(AboutState.initial());

  @override
  Stream<AboutState> mapEventToState(
    AboutEvent event,
  ) async* {
    yield* _mapInitEvent(event as Init);
  }

  Stream<AboutState> _mapInitEvent(Init event) async* {
    final failureOrSetting = await _initAboutUsecase(NoParams());
    yield failureOrSetting.fold(
      (failure) => state.copyWith(error: failure),
      (about) => AboutState(about: about),
    );
  }
}
