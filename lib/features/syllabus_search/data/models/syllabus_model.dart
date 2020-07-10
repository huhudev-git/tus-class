import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/syllabus.dart';

part 'syllabus_model.freezed.dart';
part 'syllabus_model.g.dart';

@freezed
abstract class SyllabusModel implements _$SyllabusModel {
  const factory SyllabusModel({
    @required String code,
    @required String course,
    @required String teacher,
    @required String semester,
    @required String subject,
    @required String type,
    @required int page,
    @required int year,
    @nullable @required int day,
    @required List<int> periods,
  }) = _SyllabusModel;
  const SyllabusModel._();

  Syllabus toDomain() {
    return Syllabus(
      code: code,
      course: course,
      teacher: teacher,
      semester: semester,
      subject: subject,
      type: type,
      page: page,
      year: year,
      day: day,
      periods: periods,
    );
  }

  factory SyllabusModel.fromJson(Map<String, dynamic> json) => _$SyllabusModelFromJson(json);
}
