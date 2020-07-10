part of 'syllabus_search_filter_bloc.dart';

@freezed
abstract class SyllabusSearchFilterState with _$SyllabusSearchFilterState {
  const factory SyllabusSearchFilterState.initial() = Initial;
  const factory SyllabusSearchFilterState.loading() = Loading;
  const factory SyllabusSearchFilterState.loaded({SyllabusFilter filter}) = Loaded;
  const factory SyllabusSearchFilterState.failed({Failure error}) = Failed;
}
