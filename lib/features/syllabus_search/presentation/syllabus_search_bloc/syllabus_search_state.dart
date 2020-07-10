part of 'syllabus_search_bloc.dart';

@freezed
abstract class SyllabusSearchState with _$SyllabusSearchState {
  const factory SyllabusSearchState.initial() = Initial;
  const factory SyllabusSearchState.loading() = Loading;
  const factory SyllabusSearchState.loaded({
    List<Syllabus> syllabusList,
    bool isLastPage,
    bool isLoading,
    int page,
  }) = Loaded;
  const factory SyllabusSearchState.failed({Failure error}) = Failed;
}
