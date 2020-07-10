import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/semester.dart';

part 'semester_model.freezed.dart';
part 'semester_model.g.dart';

@freezed
abstract class SemesterModel implements _$SemesterModel {
  const factory SemesterModel({
    @required String name,
    @required String value,
  }) = _SemesterModel;
  const SemesterModel._();

  Semester toDomain() {
    return Semester(
      name: name,
      value: value,
    );
  }

  factory SemesterModel.fromDomain(Semester semester) {
    return SemesterModel(
      name: semester.name,
      value: semester.value,
    );
  }

  factory SemesterModel.fromJson(Map<String, dynamic> json) => _$SemesterModelFromJson(json);
}
