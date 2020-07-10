import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/usecase.dart';
import '../../domain/usecase/get_i18n_usecase.dart' as giu;
import '../../domain/usecase/set_i18n_usecase.dart' as siu;

part 'i18n_bloc.freezed.dart';
part 'i18n_event.dart';
part 'i18n_state.dart';

const defaultLanguageCode = Locale('ja', 'JP');

@injectable
class I18nBloc extends Bloc<I18nEvent, I18nState> {
  final giu.GetI18nUsecase _getI18nUsecase;
  final siu.SetI18nUsecase _setI18nUsecase;

  I18nBloc({
    @required giu.GetI18nUsecase getI18nUsecase,
    @required siu.SetI18nUsecase setI18nUsecase,
  })  : assert(getI18nUsecase != null),
        assert(setI18nUsecase != null),
        _getI18nUsecase = getI18nUsecase,
        _setI18nUsecase = setI18nUsecase;

  @override
  I18nState get initialState => I18nState.initial(locale: defaultLanguageCode);

  @override
  Stream<I18nState> mapEventToState(
    I18nEvent event,
  ) async* {
    yield* event.map(
      init: _mapInitEvent,
      switchLanguage: _mapSwitchLanguageEvent,
    );
  }

  Stream<I18nState> _mapInitEvent(Init event) async* {
    const locale = defaultLanguageCode;
    final failureOrLocale = await _getI18nUsecase(NoParams());

    yield* failureOrLocale.fold(
      (failure) async* {
        yield I18nState.loaded(locale: locale);
        await _setI18nUsecase(siu.Params(locale: locale));
      },
      (locale) async* {
        yield I18nState.loaded(locale: locale);
      },
    );
  }

  Stream<I18nState> _mapSwitchLanguageEvent(SwitchLanguage event) async* {
    final locale = Locale.fromSubtags(
      languageCode: event.languageCode,
      scriptCode: event.scriptCode,
      countryCode: event.countryCode,
    );

    yield I18nState.loaded(locale: locale);
    await _setI18nUsecase(siu.Params(locale: locale));
  }
}
