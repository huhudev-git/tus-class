import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:tus_class/lang/localizations.dart';

abstract class Failure extends Equatable {
  String get name => '';
  String get img => '';

  String getTitle(BuildContext context) {
    return AppLocalizations.of(context).translate('${name}_FAILURE_TITLE');
  }

  String getMessage(BuildContext context) {
    return AppLocalizations.of(context).translate('${name}_FAILURE_MESSAGE');
  }

  @override
  List<Object> get props => [];
}

// General failures
class ServerFailure extends Failure {
  @override
  String get name => 'SERVER';
  @override
  String get img => 'assets/illustration/space/venus.svg';
}

class CacheFailure extends Failure {
  @override
  String get name => 'CACHE';
  @override
  String get img => '';
}

class InvalidPasswordFailure extends Failure {
  @override
  String get name => 'INVAILD_PASSWORD';
  @override
  String get img => '';
}

class NetworkFailure extends Failure {
  @override
  String get name => 'NETWORK';
  @override
  String get img => 'assets/illustration/space/moon-rover.svg';
}

class TUSFailure extends Failure {}

class TUSNoSyllabusFailure extends TUSFailure {
  @override
  String get name => '';
  @override
  String get img => '';
}

class TUSSessionOutFailure extends TUSFailure {
  @override
  String get name => 'TUS_SESSION_OUT';
  @override
  String get img => 'assets/illustration/space/milky-way.svg';
}

class TUSNULLPageIdFailure extends TUSFailure {
  @override
  String get name => 'TUS_NULL_PAGEID';
  @override
  String get img => 'assets/illustration/space/planet-earth-3.svg';
}

class MessageEntryFailure extends TUSFailure {
  @override
  String get name => 'MESSAGE_ENTRY_SWITCH';
  @override
  String get img => '';
}

class TooManyResultFailure extends TUSFailure {
  @override
  String get name => 'TOO_MANY_RESULT';
  @override
  String get img => 'assets/illustration/space/solar-system.svg';
}

class NoneResultFailure extends TUSFailure {
  @override
  String get name => 'NONE_RESULT';
  @override
  String get img => 'assets/illustration/space/ursa-major.svg';
}

class TUSNoTimeTableFailure extends TUSFailure {
  @override
  String get name => 'NO_TIMETABLE';
  @override
  String get img => 'assets/illustration/space/ursa-major.svg';
}

class TUSUnexceptedFailure extends TUSFailure {
  @override
  String get name => 'TUS_UNEXPECTED';
  @override
  String get img => 'assets/illustration/space/planet-earth-4.svg';
}

class ServerMaintenanceFailure extends TUSFailure {
  @override
  String get name => 'SERVER_MAINTENANCE';
  @override
  String get img => 'assets/illustration/space/moon-rover-1.svg';
}

class TUSFetchDataFailure extends TUSFailure {
  @override
  String get name => 'TUS_FETCH_DATA';
  @override
  String get img => 'assets/illustration/space/ufo.svg';
}

class TUSEmptyMessageFailure extends TUSFailure {
  @override
  String get name => 'TUS_EMPTY_MESSAGE';
  @override
  String get img => 'assets/illustration/space/space-ship-6.svg';
}
