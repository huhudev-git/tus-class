import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/fetch_syllabus_result.dart';
import 'syllabus_model.dart';

part 'fetch_syllabus_result_model.freezed.dart';
part 'fetch_syllabus_result_model.g.dart';

@freezed
abstract class FetchSyllabusResultModel implements _$FetchSyllabusResultModel {
  const factory FetchSyllabusResultModel({
    @required List<SyllabusModel> syllabusList,
    @required bool isLastPage,
  }) = _FetchSyllabusResultModel;
  const FetchSyllabusResultModel._();

  FetchSyllabusResult toDomain() {
    return FetchSyllabusResult(
      syllabusList: syllabusList.map((e) => e.toDomain()).toList(),
      isLastPage: isLastPage,
    );
  }

  factory FetchSyllabusResultModel.fromJson(Map<String, dynamic> json) => _$FetchSyllabusResultModelFromJson(json);
}
