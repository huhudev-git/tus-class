// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'show_mode.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ShowModeDetailTearOff {
  const _$ShowModeDetailTearOff();

  _ShowModeDetail call(
      {@required IconData icon,
      @required double width,
      @required int day,
      @required int period}) {
    return _ShowModeDetail(
      icon: icon,
      width: width,
      day: day,
      period: period,
    );
  }
}

// ignore: unused_element
const $ShowModeDetail = _$ShowModeDetailTearOff();

mixin _$ShowModeDetail {
  IconData get icon;
  double get width;
  int get day;
  int get period;

  $ShowModeDetailCopyWith<ShowModeDetail> get copyWith;
}

abstract class $ShowModeDetailCopyWith<$Res> {
  factory $ShowModeDetailCopyWith(
          ShowModeDetail value, $Res Function(ShowModeDetail) then) =
      _$ShowModeDetailCopyWithImpl<$Res>;
  $Res call({IconData icon, double width, int day, int period});
}

class _$ShowModeDetailCopyWithImpl<$Res>
    implements $ShowModeDetailCopyWith<$Res> {
  _$ShowModeDetailCopyWithImpl(this._value, this._then);

  final ShowModeDetail _value;
  // ignore: unused_field
  final $Res Function(ShowModeDetail) _then;

  @override
  $Res call({
    Object icon = freezed,
    Object width = freezed,
    Object day = freezed,
    Object period = freezed,
  }) {
    return _then(_value.copyWith(
      icon: icon == freezed ? _value.icon : icon as IconData,
      width: width == freezed ? _value.width : width as double,
      day: day == freezed ? _value.day : day as int,
      period: period == freezed ? _value.period : period as int,
    ));
  }
}

abstract class _$ShowModeDetailCopyWith<$Res>
    implements $ShowModeDetailCopyWith<$Res> {
  factory _$ShowModeDetailCopyWith(
          _ShowModeDetail value, $Res Function(_ShowModeDetail) then) =
      __$ShowModeDetailCopyWithImpl<$Res>;
  @override
  $Res call({IconData icon, double width, int day, int period});
}

class __$ShowModeDetailCopyWithImpl<$Res>
    extends _$ShowModeDetailCopyWithImpl<$Res>
    implements _$ShowModeDetailCopyWith<$Res> {
  __$ShowModeDetailCopyWithImpl(
      _ShowModeDetail _value, $Res Function(_ShowModeDetail) _then)
      : super(_value, (v) => _then(v as _ShowModeDetail));

  @override
  _ShowModeDetail get _value => super._value as _ShowModeDetail;

  @override
  $Res call({
    Object icon = freezed,
    Object width = freezed,
    Object day = freezed,
    Object period = freezed,
  }) {
    return _then(_ShowModeDetail(
      icon: icon == freezed ? _value.icon : icon as IconData,
      width: width == freezed ? _value.width : width as double,
      day: day == freezed ? _value.day : day as int,
      period: period == freezed ? _value.period : period as int,
    ));
  }
}

class _$_ShowModeDetail
    with DiagnosticableTreeMixin
    implements _ShowModeDetail {
  const _$_ShowModeDetail(
      {@required this.icon,
      @required this.width,
      @required this.day,
      @required this.period})
      : assert(icon != null),
        assert(width != null),
        assert(day != null),
        assert(period != null);

  @override
  final IconData icon;
  @override
  final double width;
  @override
  final int day;
  @override
  final int period;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowModeDetail(icon: $icon, width: $width, day: $day, period: $period)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ShowModeDetail'))
      ..add(DiagnosticsProperty('icon', icon))
      ..add(DiagnosticsProperty('width', width))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('period', period));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShowModeDetail &&
            (identical(other.icon, icon) ||
                const DeepCollectionEquality().equals(other.icon, icon)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(icon) ^
      const DeepCollectionEquality().hash(width) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(period);

  @override
  _$ShowModeDetailCopyWith<_ShowModeDetail> get copyWith =>
      __$ShowModeDetailCopyWithImpl<_ShowModeDetail>(this, _$identity);
}

abstract class _ShowModeDetail implements ShowModeDetail {
  const factory _ShowModeDetail(
      {@required IconData icon,
      @required double width,
      @required int day,
      @required int period}) = _$_ShowModeDetail;

  @override
  IconData get icon;
  @override
  double get width;
  @override
  int get day;
  @override
  int get period;
  @override
  _$ShowModeDetailCopyWith<_ShowModeDetail> get copyWith;
}

class _$ShowModeTearOff {
  const _$ShowModeTearOff();

  Regular regular() {
    return const Regular();
  }

  Weekend weekend() {
    return const Weekend();
  }

  Night night() {
    return const Night();
  }

  NightWeekend nightWeekend() {
    return const NightWeekend();
  }
}

// ignore: unused_element
const $ShowMode = _$ShowModeTearOff();

mixin _$ShowMode {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regular(),
    @required Result weekend(),
    @required Result night(),
    @required Result nightWeekend(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regular(),
    Result weekend(),
    Result night(),
    Result nightWeekend(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regular(Regular value),
    @required Result weekend(Weekend value),
    @required Result night(Night value),
    @required Result nightWeekend(NightWeekend value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regular(Regular value),
    Result weekend(Weekend value),
    Result night(Night value),
    Result nightWeekend(NightWeekend value),
    @required Result orElse(),
  });
}

abstract class $ShowModeCopyWith<$Res> {
  factory $ShowModeCopyWith(ShowMode value, $Res Function(ShowMode) then) =
      _$ShowModeCopyWithImpl<$Res>;
}

class _$ShowModeCopyWithImpl<$Res> implements $ShowModeCopyWith<$Res> {
  _$ShowModeCopyWithImpl(this._value, this._then);

  final ShowMode _value;
  // ignore: unused_field
  final $Res Function(ShowMode) _then;
}

abstract class $RegularCopyWith<$Res> {
  factory $RegularCopyWith(Regular value, $Res Function(Regular) then) =
      _$RegularCopyWithImpl<$Res>;
}

class _$RegularCopyWithImpl<$Res> extends _$ShowModeCopyWithImpl<$Res>
    implements $RegularCopyWith<$Res> {
  _$RegularCopyWithImpl(Regular _value, $Res Function(Regular) _then)
      : super(_value, (v) => _then(v as Regular));

  @override
  Regular get _value => super._value as Regular;
}

class _$Regular with DiagnosticableTreeMixin implements Regular {
  const _$Regular();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowMode.regular()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowMode.regular'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Regular);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regular(),
    @required Result weekend(),
    @required Result night(),
    @required Result nightWeekend(),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return regular();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regular(),
    Result weekend(),
    Result night(),
    Result nightWeekend(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (regular != null) {
      return regular();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regular(Regular value),
    @required Result weekend(Weekend value),
    @required Result night(Night value),
    @required Result nightWeekend(NightWeekend value),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return regular(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regular(Regular value),
    Result weekend(Weekend value),
    Result night(Night value),
    Result nightWeekend(NightWeekend value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (regular != null) {
      return regular(this);
    }
    return orElse();
  }
}

abstract class Regular implements ShowMode {
  const factory Regular() = _$Regular;
}

abstract class $WeekendCopyWith<$Res> {
  factory $WeekendCopyWith(Weekend value, $Res Function(Weekend) then) =
      _$WeekendCopyWithImpl<$Res>;
}

class _$WeekendCopyWithImpl<$Res> extends _$ShowModeCopyWithImpl<$Res>
    implements $WeekendCopyWith<$Res> {
  _$WeekendCopyWithImpl(Weekend _value, $Res Function(Weekend) _then)
      : super(_value, (v) => _then(v as Weekend));

  @override
  Weekend get _value => super._value as Weekend;
}

class _$Weekend with DiagnosticableTreeMixin implements Weekend {
  const _$Weekend();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowMode.weekend()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowMode.weekend'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Weekend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regular(),
    @required Result weekend(),
    @required Result night(),
    @required Result nightWeekend(),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return weekend();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regular(),
    Result weekend(),
    Result night(),
    Result nightWeekend(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weekend != null) {
      return weekend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regular(Regular value),
    @required Result weekend(Weekend value),
    @required Result night(Night value),
    @required Result nightWeekend(NightWeekend value),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return weekend(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regular(Regular value),
    Result weekend(Weekend value),
    Result night(Night value),
    Result nightWeekend(NightWeekend value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (weekend != null) {
      return weekend(this);
    }
    return orElse();
  }
}

abstract class Weekend implements ShowMode {
  const factory Weekend() = _$Weekend;
}

abstract class $NightCopyWith<$Res> {
  factory $NightCopyWith(Night value, $Res Function(Night) then) =
      _$NightCopyWithImpl<$Res>;
}

class _$NightCopyWithImpl<$Res> extends _$ShowModeCopyWithImpl<$Res>
    implements $NightCopyWith<$Res> {
  _$NightCopyWithImpl(Night _value, $Res Function(Night) _then)
      : super(_value, (v) => _then(v as Night));

  @override
  Night get _value => super._value as Night;
}

class _$Night with DiagnosticableTreeMixin implements Night {
  const _$Night();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowMode.night()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowMode.night'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Night);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regular(),
    @required Result weekend(),
    @required Result night(),
    @required Result nightWeekend(),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return night();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regular(),
    Result weekend(),
    Result night(),
    Result nightWeekend(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (night != null) {
      return night();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regular(Regular value),
    @required Result weekend(Weekend value),
    @required Result night(Night value),
    @required Result nightWeekend(NightWeekend value),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return night(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regular(Regular value),
    Result weekend(Weekend value),
    Result night(Night value),
    Result nightWeekend(NightWeekend value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (night != null) {
      return night(this);
    }
    return orElse();
  }
}

abstract class Night implements ShowMode {
  const factory Night() = _$Night;
}

abstract class $NightWeekendCopyWith<$Res> {
  factory $NightWeekendCopyWith(
          NightWeekend value, $Res Function(NightWeekend) then) =
      _$NightWeekendCopyWithImpl<$Res>;
}

class _$NightWeekendCopyWithImpl<$Res> extends _$ShowModeCopyWithImpl<$Res>
    implements $NightWeekendCopyWith<$Res> {
  _$NightWeekendCopyWithImpl(
      NightWeekend _value, $Res Function(NightWeekend) _then)
      : super(_value, (v) => _then(v as NightWeekend));

  @override
  NightWeekend get _value => super._value as NightWeekend;
}

class _$NightWeekend with DiagnosticableTreeMixin implements NightWeekend {
  const _$NightWeekend();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowMode.nightWeekend()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowMode.nightWeekend'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NightWeekend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result regular(),
    @required Result weekend(),
    @required Result night(),
    @required Result nightWeekend(),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return nightWeekend();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result regular(),
    Result weekend(),
    Result night(),
    Result nightWeekend(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nightWeekend != null) {
      return nightWeekend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result regular(Regular value),
    @required Result weekend(Weekend value),
    @required Result night(Night value),
    @required Result nightWeekend(NightWeekend value),
  }) {
    assert(regular != null);
    assert(weekend != null);
    assert(night != null);
    assert(nightWeekend != null);
    return nightWeekend(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result regular(Regular value),
    Result weekend(Weekend value),
    Result night(Night value),
    Result nightWeekend(NightWeekend value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (nightWeekend != null) {
      return nightWeekend(this);
    }
    return orElse();
  }
}

abstract class NightWeekend implements ShowMode {
  const factory NightWeekend() = _$NightWeekend;
}
