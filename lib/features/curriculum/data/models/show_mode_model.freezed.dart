// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'show_mode_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ShowModeModel _$ShowModeModelFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'regular':
      return Regular.fromJson(json);
    case 'weekend':
      return Weekend.fromJson(json);
    case 'night':
      return Night.fromJson(json);
    case 'nightWeekend':
      return NightWeekend.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$ShowModeModelTearOff {
  const _$ShowModeModelTearOff();

// ignore: unused_element
  Regular regular() {
    return const Regular();
  }

// ignore: unused_element
  Weekend weekend() {
    return const Weekend();
  }

// ignore: unused_element
  Night night() {
    return const Night();
  }

// ignore: unused_element
  NightWeekend nightWeekend() {
    return const NightWeekend();
  }

// ignore: unused_element
  ShowModeModel fromJson(Map<String, Object> json) {
    return ShowModeModel.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ShowModeModel = _$ShowModeModelTearOff();

/// @nodoc
mixin _$ShowModeModel {
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
  Map<String, dynamic> toJson();
}

/// @nodoc
abstract class $ShowModeModelCopyWith<$Res> {
  factory $ShowModeModelCopyWith(
          ShowModeModel value, $Res Function(ShowModeModel) then) =
      _$ShowModeModelCopyWithImpl<$Res>;
}

/// @nodoc
class _$ShowModeModelCopyWithImpl<$Res>
    implements $ShowModeModelCopyWith<$Res> {
  _$ShowModeModelCopyWithImpl(this._value, this._then);

  final ShowModeModel _value;
  // ignore: unused_field
  final $Res Function(ShowModeModel) _then;
}

/// @nodoc
abstract class $RegularCopyWith<$Res> {
  factory $RegularCopyWith(Regular value, $Res Function(Regular) then) =
      _$RegularCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegularCopyWithImpl<$Res> extends _$ShowModeModelCopyWithImpl<$Res>
    implements $RegularCopyWith<$Res> {
  _$RegularCopyWithImpl(Regular _value, $Res Function(Regular) _then)
      : super(_value, (v) => _then(v as Regular));

  @override
  Regular get _value => super._value as Regular;
}

@JsonSerializable()

/// @nodoc
class _$Regular extends Regular with DiagnosticableTreeMixin {
  const _$Regular() : super._();

  factory _$Regular.fromJson(Map<String, dynamic> json) =>
      _$_$RegularFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowModeModel.regular()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowModeModel.regular'));
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$RegularToJson(this)..['runtimeType'] = 'regular';
  }
}

abstract class Regular extends ShowModeModel {
  const Regular._() : super._();
  const factory Regular() = _$Regular;

  factory Regular.fromJson(Map<String, dynamic> json) = _$Regular.fromJson;
}

/// @nodoc
abstract class $WeekendCopyWith<$Res> {
  factory $WeekendCopyWith(Weekend value, $Res Function(Weekend) then) =
      _$WeekendCopyWithImpl<$Res>;
}

/// @nodoc
class _$WeekendCopyWithImpl<$Res> extends _$ShowModeModelCopyWithImpl<$Res>
    implements $WeekendCopyWith<$Res> {
  _$WeekendCopyWithImpl(Weekend _value, $Res Function(Weekend) _then)
      : super(_value, (v) => _then(v as Weekend));

  @override
  Weekend get _value => super._value as Weekend;
}

@JsonSerializable()

/// @nodoc
class _$Weekend extends Weekend with DiagnosticableTreeMixin {
  const _$Weekend() : super._();

  factory _$Weekend.fromJson(Map<String, dynamic> json) =>
      _$_$WeekendFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowModeModel.weekend()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowModeModel.weekend'));
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$WeekendToJson(this)..['runtimeType'] = 'weekend';
  }
}

abstract class Weekend extends ShowModeModel {
  const Weekend._() : super._();
  const factory Weekend() = _$Weekend;

  factory Weekend.fromJson(Map<String, dynamic> json) = _$Weekend.fromJson;
}

/// @nodoc
abstract class $NightCopyWith<$Res> {
  factory $NightCopyWith(Night value, $Res Function(Night) then) =
      _$NightCopyWithImpl<$Res>;
}

/// @nodoc
class _$NightCopyWithImpl<$Res> extends _$ShowModeModelCopyWithImpl<$Res>
    implements $NightCopyWith<$Res> {
  _$NightCopyWithImpl(Night _value, $Res Function(Night) _then)
      : super(_value, (v) => _then(v as Night));

  @override
  Night get _value => super._value as Night;
}

@JsonSerializable()

/// @nodoc
class _$Night extends Night with DiagnosticableTreeMixin {
  const _$Night() : super._();

  factory _$Night.fromJson(Map<String, dynamic> json) =>
      _$_$NightFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowModeModel.night()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowModeModel.night'));
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$NightToJson(this)..['runtimeType'] = 'night';
  }
}

abstract class Night extends ShowModeModel {
  const Night._() : super._();
  const factory Night() = _$Night;

  factory Night.fromJson(Map<String, dynamic> json) = _$Night.fromJson;
}

/// @nodoc
abstract class $NightWeekendCopyWith<$Res> {
  factory $NightWeekendCopyWith(
          NightWeekend value, $Res Function(NightWeekend) then) =
      _$NightWeekendCopyWithImpl<$Res>;
}

/// @nodoc
class _$NightWeekendCopyWithImpl<$Res> extends _$ShowModeModelCopyWithImpl<$Res>
    implements $NightWeekendCopyWith<$Res> {
  _$NightWeekendCopyWithImpl(
      NightWeekend _value, $Res Function(NightWeekend) _then)
      : super(_value, (v) => _then(v as NightWeekend));

  @override
  NightWeekend get _value => super._value as NightWeekend;
}

@JsonSerializable()

/// @nodoc
class _$NightWeekend extends NightWeekend with DiagnosticableTreeMixin {
  const _$NightWeekend() : super._();

  factory _$NightWeekend.fromJson(Map<String, dynamic> json) =>
      _$_$NightWeekendFromJson(json);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ShowModeModel.nightWeekend()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ShowModeModel.nightWeekend'));
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

  @override
  Map<String, dynamic> toJson() {
    return _$_$NightWeekendToJson(this)..['runtimeType'] = 'nightWeekend';
  }
}

abstract class NightWeekend extends ShowModeModel {
  const NightWeekend._() : super._();
  const factory NightWeekend() = _$NightWeekend;

  factory NightWeekend.fromJson(Map<String, dynamic> json) =
      _$NightWeekend.fromJson;
}
