import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/syllabus_filter.dart';

part 'syllabus_filter_model.freezed.dart';
part 'syllabus_filter_model.g.dart';

@freezed
abstract class SyllabusFilterModel implements _$SyllabusFilterModel {
  const factory SyllabusFilterModel({
    @required List<String> htmlNendo,
    @required Map<String, String> htmlJigen,
    @required Map<String, String> htmlYobi,
    @required Map<String, String> htmlGakunen,
    @required Map<String, String> htmlGakkiNo,
    @required Map<String, String> htmlKamokJugyo,
    @required Map<String, String> htmlGakka,
  }) = _SyllabusFilterModel;
  const SyllabusFilterModel._();

  SyllabusFilter toDomain() {
    return SyllabusFilter(
      htmlNendo: htmlNendo,
      htmlJigen: htmlJigen,
      htmlYobi: htmlYobi,
      htmlGakunen: htmlGakunen,
      htmlGakkiNo: htmlGakkiNo,
      htmlKamokJugyo: htmlKamokJugyo,
      htmlGakka: htmlGakka,
    );
  }

  factory SyllabusFilterModel.fromJson(Map<String, dynamic> json) => _$SyllabusFilterModelFromJson(json);
}
