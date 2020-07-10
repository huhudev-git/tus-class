part of 'syllabus_search_detail_bloc.dart';

@freezed
abstract class SyllabusSearchDetailState with _$SyllabusSearchDetailState {
  const factory SyllabusSearchDetailState.initial() = Initial;
  const factory SyllabusSearchDetailState.loading() = Loading;
  const factory SyllabusSearchDetailState.loaded({SyllabusDetail detail}) = Loaded;
  const factory SyllabusSearchDetailState.failed({Failure error}) = Failed;
}
