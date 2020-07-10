// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'syllabus_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SyllabusSearchEventTearOff {
  const _$SyllabusSearchEventTearOff();

  Init init() {
    return const Init();
  }

  Search search(
      {String key,
      String year,
      String semester,
      String category,
      String subject,
      String grade,
      String day,
      String period,
      bool isIntensive,
      bool teacher}) {
    return Search(
      key: key,
      year: year,
      semester: semester,
      category: category,
      subject: subject,
      grade: grade,
      day: day,
      period: period,
      isIntensive: isIntensive,
      teacher: teacher,
    );
  }

  FetchPage fetchPage({int page}) {
    return FetchPage(
      page: page,
    );
  }
}

// ignore: unused_element
const $SyllabusSearchEvent = _$SyllabusSearchEventTearOff();

mixin _$SyllabusSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String key,
            String year,
            String semester,
            String category,
            String subject,
            String grade,
            String day,
            String period,
            bool isIntensive,
            bool teacher),
    @required Result fetchPage(int page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String key,
        String year,
        String semester,
        String category,
        String subject,
        String grade,
        String day,
        String period,
        bool isIntensive,
        bool teacher),
    Result fetchPage(int page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result search(Search value),
    @required Result fetchPage(FetchPage value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result search(Search value),
    Result fetchPage(FetchPage value),
    @required Result orElse(),
  });
}

abstract class $SyllabusSearchEventCopyWith<$Res> {
  factory $SyllabusSearchEventCopyWith(
          SyllabusSearchEvent value, $Res Function(SyllabusSearchEvent) then) =
      _$SyllabusSearchEventCopyWithImpl<$Res>;
}

class _$SyllabusSearchEventCopyWithImpl<$Res>
    implements $SyllabusSearchEventCopyWith<$Res> {
  _$SyllabusSearchEventCopyWithImpl(this._value, this._then);

  final SyllabusSearchEvent _value;
  // ignore: unused_field
  final $Res Function(SyllabusSearchEvent) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$SyllabusSearchEventCopyWithImpl<$Res>
    implements $InitCopyWith<$Res> {
  _$InitCopyWithImpl(Init _value, $Res Function(Init) _then)
      : super(_value, (v) => _then(v as Init));

  @override
  Init get _value => super._value as Init;
}

class _$Init implements Init {
  const _$Init();

  @override
  String toString() {
    return 'SyllabusSearchEvent.init()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Init);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String key,
            String year,
            String semester,
            String category,
            String subject,
            String grade,
            String day,
            String period,
            bool isIntensive,
            bool teacher),
    @required Result fetchPage(int page),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return init();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String key,
        String year,
        String semester,
        String category,
        String subject,
        String grade,
        String day,
        String period,
        bool isIntensive,
        bool teacher),
    Result fetchPage(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result search(Search value),
    @required Result fetchPage(FetchPage value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return init(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result search(Search value),
    Result fetchPage(FetchPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Init implements SyllabusSearchEvent {
  const factory Init() = _$Init;
}

abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String year,
      String semester,
      String category,
      String subject,
      String grade,
      String day,
      String period,
      bool isIntensive,
      bool teacher});
}

class _$SearchCopyWithImpl<$Res> extends _$SyllabusSearchEventCopyWithImpl<$Res>
    implements $SearchCopyWith<$Res> {
  _$SearchCopyWithImpl(Search _value, $Res Function(Search) _then)
      : super(_value, (v) => _then(v as Search));

  @override
  Search get _value => super._value as Search;

  @override
  $Res call({
    Object key = freezed,
    Object year = freezed,
    Object semester = freezed,
    Object category = freezed,
    Object subject = freezed,
    Object grade = freezed,
    Object day = freezed,
    Object period = freezed,
    Object isIntensive = freezed,
    Object teacher = freezed,
  }) {
    return _then(Search(
      key: key == freezed ? _value.key : key as String,
      year: year == freezed ? _value.year : year as String,
      semester: semester == freezed ? _value.semester : semester as String,
      category: category == freezed ? _value.category : category as String,
      subject: subject == freezed ? _value.subject : subject as String,
      grade: grade == freezed ? _value.grade : grade as String,
      day: day == freezed ? _value.day : day as String,
      period: period == freezed ? _value.period : period as String,
      isIntensive:
          isIntensive == freezed ? _value.isIntensive : isIntensive as bool,
      teacher: teacher == freezed ? _value.teacher : teacher as bool,
    ));
  }
}

class _$Search implements Search {
  const _$Search(
      {this.key,
      this.year,
      this.semester,
      this.category,
      this.subject,
      this.grade,
      this.day,
      this.period,
      this.isIntensive,
      this.teacher});

  @override
  final String key;
  @override
  final String year;
  @override
  final String semester;
  @override
  final String category;
  @override
  final String subject;
  @override
  final String grade;
  @override
  final String day;
  @override
  final String period;
  @override
  final bool isIntensive;
  @override
  final bool teacher;

  @override
  String toString() {
    return 'SyllabusSearchEvent.search(key: $key, year: $year, semester: $semester, category: $category, subject: $subject, grade: $grade, day: $day, period: $period, isIntensive: $isIntensive, teacher: $teacher)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Search &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.year, year) ||
                const DeepCollectionEquality().equals(other.year, year)) &&
            (identical(other.semester, semester) ||
                const DeepCollectionEquality()
                    .equals(other.semester, semester)) &&
            (identical(other.category, category) ||
                const DeepCollectionEquality()
                    .equals(other.category, category)) &&
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.isIntensive, isIntensive) ||
                const DeepCollectionEquality()
                    .equals(other.isIntensive, isIntensive)) &&
            (identical(other.teacher, teacher) ||
                const DeepCollectionEquality().equals(other.teacher, teacher)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(year) ^
      const DeepCollectionEquality().hash(semester) ^
      const DeepCollectionEquality().hash(category) ^
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(isIntensive) ^
      const DeepCollectionEquality().hash(teacher);

  @override
  $SearchCopyWith<Search> get copyWith =>
      _$SearchCopyWithImpl<Search>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String key,
            String year,
            String semester,
            String category,
            String subject,
            String grade,
            String day,
            String period,
            bool isIntensive,
            bool teacher),
    @required Result fetchPage(int page),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return search(key, year, semester, category, subject, grade, day, period,
        isIntensive, teacher);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String key,
        String year,
        String semester,
        String category,
        String subject,
        String grade,
        String day,
        String period,
        bool isIntensive,
        bool teacher),
    Result fetchPage(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(key, year, semester, category, subject, grade, day, period,
          isIntensive, teacher);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result search(Search value),
    @required Result fetchPage(FetchPage value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return search(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result search(Search value),
    Result fetchPage(FetchPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SyllabusSearchEvent {
  const factory Search(
      {String key,
      String year,
      String semester,
      String category,
      String subject,
      String grade,
      String day,
      String period,
      bool isIntensive,
      bool teacher}) = _$Search;

  String get key;
  String get year;
  String get semester;
  String get category;
  String get subject;
  String get grade;
  String get day;
  String get period;
  bool get isIntensive;
  bool get teacher;
  $SearchCopyWith<Search> get copyWith;
}

abstract class $FetchPageCopyWith<$Res> {
  factory $FetchPageCopyWith(FetchPage value, $Res Function(FetchPage) then) =
      _$FetchPageCopyWithImpl<$Res>;
  $Res call({int page});
}

class _$FetchPageCopyWithImpl<$Res>
    extends _$SyllabusSearchEventCopyWithImpl<$Res>
    implements $FetchPageCopyWith<$Res> {
  _$FetchPageCopyWithImpl(FetchPage _value, $Res Function(FetchPage) _then)
      : super(_value, (v) => _then(v as FetchPage));

  @override
  FetchPage get _value => super._value as FetchPage;

  @override
  $Res call({
    Object page = freezed,
  }) {
    return _then(FetchPage(
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

class _$FetchPage implements FetchPage {
  const _$FetchPage({this.page});

  @override
  final int page;

  @override
  String toString() {
    return 'SyllabusSearchEvent.fetchPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is FetchPage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @override
  $FetchPageCopyWith<FetchPage> get copyWith =>
      _$FetchPageCopyWithImpl<FetchPage>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String key,
            String year,
            String semester,
            String category,
            String subject,
            String grade,
            String day,
            String period,
            bool isIntensive,
            bool teacher),
    @required Result fetchPage(int page),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return fetchPage(page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result init(),
    Result search(
        String key,
        String year,
        String semester,
        String category,
        String subject,
        String grade,
        String day,
        String period,
        bool isIntensive,
        bool teacher),
    Result fetchPage(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchPage != null) {
      return fetchPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result init(Init value),
    @required Result search(Search value),
    @required Result fetchPage(FetchPage value),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return fetchPage(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result init(Init value),
    Result search(Search value),
    Result fetchPage(FetchPage value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (fetchPage != null) {
      return fetchPage(this);
    }
    return orElse();
  }
}

abstract class FetchPage implements SyllabusSearchEvent {
  const factory FetchPage({int page}) = _$FetchPage;

  int get page;
  $FetchPageCopyWith<FetchPage> get copyWith;
}

class _$SyllabusSearchStateTearOff {
  const _$SyllabusSearchStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(
      {List<Syllabus> syllabusList,
      bool isLastPage,
      bool isLoading,
      int page}) {
    return Loaded(
      syllabusList: syllabusList,
      isLastPage: isLastPage,
      isLoading: isLoading,
      page: page,
    );
  }

  Failed failed({Failure error}) {
    return Failed(
      error: error,
    );
  }
}

// ignore: unused_element
const $SyllabusSearchState = _$SyllabusSearchStateTearOff();

mixin _$SyllabusSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(List<Syllabus> syllabusList, bool isLastPage,
            bool isLoading, int page),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Syllabus> syllabusList, bool isLastPage, bool isLoading, int page),
    Result failed(Failure error),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  });
}

abstract class $SyllabusSearchStateCopyWith<$Res> {
  factory $SyllabusSearchStateCopyWith(
          SyllabusSearchState value, $Res Function(SyllabusSearchState) then) =
      _$SyllabusSearchStateCopyWithImpl<$Res>;
}

class _$SyllabusSearchStateCopyWithImpl<$Res>
    implements $SyllabusSearchStateCopyWith<$Res> {
  _$SyllabusSearchStateCopyWithImpl(this._value, this._then);

  final SyllabusSearchState _value;
  // ignore: unused_field
  final $Res Function(SyllabusSearchState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res>
    extends _$SyllabusSearchStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'SyllabusSearchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(List<Syllabus> syllabusList, bool isLastPage,
            bool isLoading, int page),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Syllabus> syllabusList, bool isLastPage, bool isLoading, int page),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SyllabusSearchState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res>
    extends _$SyllabusSearchStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'SyllabusSearchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(List<Syllabus> syllabusList, bool isLastPage,
            bool isLoading, int page),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Syllabus> syllabusList, bool isLastPage, bool isLoading, int page),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements SyllabusSearchState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call(
      {List<Syllabus> syllabusList, bool isLastPage, bool isLoading, int page});
}

class _$LoadedCopyWithImpl<$Res> extends _$SyllabusSearchStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object syllabusList = freezed,
    Object isLastPage = freezed,
    Object isLoading = freezed,
    Object page = freezed,
  }) {
    return _then(Loaded(
      syllabusList: syllabusList == freezed
          ? _value.syllabusList
          : syllabusList as List<Syllabus>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded(
      {this.syllabusList, this.isLastPage, this.isLoading, this.page});

  @override
  final List<Syllabus> syllabusList;
  @override
  final bool isLastPage;
  @override
  final bool isLoading;
  @override
  final int page;

  @override
  String toString() {
    return 'SyllabusSearchState.loaded(syllabusList: $syllabusList, isLastPage: $isLastPage, isLoading: $isLoading, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.syllabusList, syllabusList) ||
                const DeepCollectionEquality()
                    .equals(other.syllabusList, syllabusList)) &&
            (identical(other.isLastPage, isLastPage) ||
                const DeepCollectionEquality()
                    .equals(other.isLastPage, isLastPage)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(syllabusList) ^
      const DeepCollectionEquality().hash(isLastPage) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(page);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(List<Syllabus> syllabusList, bool isLastPage,
            bool isLoading, int page),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(syllabusList, isLastPage, isLoading, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Syllabus> syllabusList, bool isLastPage, bool isLoading, int page),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(syllabusList, isLastPage, isLoading, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements SyllabusSearchState {
  const factory Loaded(
      {List<Syllabus> syllabusList,
      bool isLastPage,
      bool isLoading,
      int page}) = _$Loaded;

  List<Syllabus> get syllabusList;
  bool get isLastPage;
  bool get isLoading;
  int get page;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
  $Res call({Failure error});
}

class _$FailedCopyWithImpl<$Res> extends _$SyllabusSearchStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;

  @override
  $Res call({
    Object error = freezed,
  }) {
    return _then(Failed(
      error: error == freezed ? _value.error : error as Failure,
    ));
  }
}

class _$Failed implements Failed {
  const _$Failed({this.error});

  @override
  final Failure error;

  @override
  String toString() {
    return 'SyllabusSearchState.failed(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Failed &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @override
  $FailedCopyWith<Failed> get copyWith =>
      _$FailedCopyWithImpl<Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(List<Syllabus> syllabusList, bool isLastPage,
            bool isLoading, int page),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Syllabus> syllabusList, bool isLastPage, bool isLoading, int page),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result failed(Failed value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return failed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result failed(Failed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements SyllabusSearchState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
