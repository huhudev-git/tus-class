import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/teacher.dart';

part 'teacher_model.freezed.dart';
part 'teacher_model.g.dart';

@freezed
abstract class TeacherModel implements _$TeacherModel {
  const factory TeacherModel({
    @required String code,
    @required String name,
  }) = _TeacherModel;
  const TeacherModel._();

  Teacher toDomain() {
    return Teacher(
      code: code,
      name: name,
    );
  }

  factory TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);
}
