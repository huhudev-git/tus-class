// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'grade_search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$GradeSearchEventTearOff {
  const _$GradeSearchEventTearOff();

  Init init() {
    return const Init();
  }

  Search search(
      {String key,
      String year,
      String semester,
      String subject,
      String grade,
      String day,
      String period,
      bool isMyself,
      bool isIntensive,
      bool teacher}) {
    return Search(
      key: key,
      year: year,
      semester: semester,
      subject: subject,
      grade: grade,
      day: day,
      period: period,
      isMyself: isMyself,
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
const $GradeSearchEvent = _$GradeSearchEventTearOff();

mixin _$GradeSearchEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result init(),
    @required
        Result search(
            String key,
            String year,
            String semester,
            String subject,
            String grade,
            String day,
            String period,
            bool isMyself,
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
        String subject,
        String grade,
        String day,
        String period,
        bool isMyself,
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

abstract class $GradeSearchEventCopyWith<$Res> {
  factory $GradeSearchEventCopyWith(
          GradeSearchEvent value, $Res Function(GradeSearchEvent) then) =
      _$GradeSearchEventCopyWithImpl<$Res>;
}

class _$GradeSearchEventCopyWithImpl<$Res>
    implements $GradeSearchEventCopyWith<$Res> {
  _$GradeSearchEventCopyWithImpl(this._value, this._then);

  final GradeSearchEvent _value;
  // ignore: unused_field
  final $Res Function(GradeSearchEvent) _then;
}

abstract class $InitCopyWith<$Res> {
  factory $InitCopyWith(Init value, $Res Function(Init) then) =
      _$InitCopyWithImpl<$Res>;
}

class _$InitCopyWithImpl<$Res> extends _$GradeSearchEventCopyWithImpl<$Res>
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
    return 'GradeSearchEvent.init()';
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
            String subject,
            String grade,
            String day,
            String period,
            bool isMyself,
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
        String subject,
        String grade,
        String day,
        String period,
        bool isMyself,
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

abstract class Init implements GradeSearchEvent {
  const factory Init() = _$Init;
}

abstract class $SearchCopyWith<$Res> {
  factory $SearchCopyWith(Search value, $Res Function(Search) then) =
      _$SearchCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String year,
      String semester,
      String subject,
      String grade,
      String day,
      String period,
      bool isMyself,
      bool isIntensive,
      bool teacher});
}

class _$SearchCopyWithImpl<$Res> extends _$GradeSearchEventCopyWithImpl<$Res>
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
    Object subject = freezed,
    Object grade = freezed,
    Object day = freezed,
    Object period = freezed,
    Object isMyself = freezed,
    Object isIntensive = freezed,
    Object teacher = freezed,
  }) {
    return _then(Search(
      key: key == freezed ? _value.key : key as String,
      year: year == freezed ? _value.year : year as String,
      semester: semester == freezed ? _value.semester : semester as String,
      subject: subject == freezed ? _value.subject : subject as String,
      grade: grade == freezed ? _value.grade : grade as String,
      day: day == freezed ? _value.day : day as String,
      period: period == freezed ? _value.period : period as String,
      isMyself: isMyself == freezed ? _value.isMyself : isMyself as bool,
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
      this.subject,
      this.grade,
      this.day,
      this.period,
      this.isMyself,
      this.isIntensive,
      this.teacher});

  @override
  final String key;
  @override
  final String year;
  @override
  final String semester;
  @override
  final String subject;
  @override
  final String grade;
  @override
  final String day;
  @override
  final String period;
  @override
  final bool isMyself;
  @override
  final bool isIntensive;
  @override
  final bool teacher;

  @override
  String toString() {
    return 'GradeSearchEvent.search(key: $key, year: $year, semester: $semester, subject: $subject, grade: $grade, day: $day, period: $period, isMyself: $isMyself, isIntensive: $isIntensive, teacher: $teacher)';
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
            (identical(other.subject, subject) ||
                const DeepCollectionEquality()
                    .equals(other.subject, subject)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)) &&
            (identical(other.period, period) ||
                const DeepCollectionEquality().equals(other.period, period)) &&
            (identical(other.isMyself, isMyself) ||
                const DeepCollectionEquality()
                    .equals(other.isMyself, isMyself)) &&
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
      const DeepCollectionEquality().hash(subject) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(day) ^
      const DeepCollectionEquality().hash(period) ^
      const DeepCollectionEquality().hash(isMyself) ^
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
            String subject,
            String grade,
            String day,
            String period,
            bool isMyself,
            bool isIntensive,
            bool teacher),
    @required Result fetchPage(int page),
  }) {
    assert(init != null);
    assert(search != null);
    assert(fetchPage != null);
    return search(key, year, semester, subject, grade, day, period, isMyself,
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
        String subject,
        String grade,
        String day,
        String period,
        bool isMyself,
        bool isIntensive,
        bool teacher),
    Result fetchPage(int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (search != null) {
      return search(key, year, semester, subject, grade, day, period, isMyself,
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

abstract class Search implements GradeSearchEvent {
  const factory Search(
      {String key,
      String year,
      String semester,
      String subject,
      String grade,
      String day,
      String period,
      bool isMyself,
      bool isIntensive,
      bool teacher}) = _$Search;

  String get key;
  String get year;
  String get semester;
  String get subject;
  String get grade;
  String get day;
  String get period;
  bool get isMyself;
  bool get isIntensive;
  bool get teacher;
  $SearchCopyWith<Search> get copyWith;
}

abstract class $FetchPageCopyWith<$Res> {
  factory $FetchPageCopyWith(FetchPage value, $Res Function(FetchPage) then) =
      _$FetchPageCopyWithImpl<$Res>;
  $Res call({int page});
}

class _$FetchPageCopyWithImpl<$Res> extends _$GradeSearchEventCopyWithImpl<$Res>
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
    return 'GradeSearchEvent.fetchPage(page: $page)';
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
            String subject,
            String grade,
            String day,
            String period,
            bool isMyself,
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
        String subject,
        String grade,
        String day,
        String period,
        bool isMyself,
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

abstract class FetchPage implements GradeSearchEvent {
  const factory FetchPage({int page}) = _$FetchPage;

  int get page;
  $FetchPageCopyWith<FetchPage> get copyWith;
}

class _$GradeSearchStateTearOff {
  const _$GradeSearchStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded(
      {List<Grade> grades, bool isLastPage, bool isLoading, int page}) {
    return Loaded(
      grades: grades,
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
const $GradeSearchState = _$GradeSearchStateTearOff();

mixin _$GradeSearchState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required
        Result loaded(
            List<Grade> grades, bool isLastPage, bool isLoading, int page),
    @required Result failed(Failure error),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Grade> grades, bool isLastPage, bool isLoading, int page),
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

abstract class $GradeSearchStateCopyWith<$Res> {
  factory $GradeSearchStateCopyWith(
          GradeSearchState value, $Res Function(GradeSearchState) then) =
      _$GradeSearchStateCopyWithImpl<$Res>;
}

class _$GradeSearchStateCopyWithImpl<$Res>
    implements $GradeSearchStateCopyWith<$Res> {
  _$GradeSearchStateCopyWithImpl(this._value, this._then);

  final GradeSearchState _value;
  // ignore: unused_field
  final $Res Function(GradeSearchState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$GradeSearchStateCopyWithImpl<$Res>
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
    return 'GradeSearchState.initial()';
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
        Result loaded(
            List<Grade> grades, bool isLastPage, bool isLoading, int page),
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
        List<Grade> grades, bool isLastPage, bool isLoading, int page),
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

abstract class Initial implements GradeSearchState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$GradeSearchStateCopyWithImpl<$Res>
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
    return 'GradeSearchState.loading()';
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
        Result loaded(
            List<Grade> grades, bool isLastPage, bool isLoading, int page),
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
        List<Grade> grades, bool isLastPage, bool isLoading, int page),
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

abstract class Loading implements GradeSearchState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<Grade> grades, bool isLastPage, bool isLoading, int page});
}

class _$LoadedCopyWithImpl<$Res> extends _$GradeSearchStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object grades = freezed,
    Object isLastPage = freezed,
    Object isLoading = freezed,
    Object page = freezed,
  }) {
    return _then(Loaded(
      grades: grades == freezed ? _value.grades : grades as List<Grade>,
      isLastPage:
          isLastPage == freezed ? _value.isLastPage : isLastPage as bool,
      isLoading: isLoading == freezed ? _value.isLoading : isLoading as bool,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({this.grades, this.isLastPage, this.isLoading, this.page});

  @override
  final List<Grade> grades;
  @override
  final bool isLastPage;
  @override
  final bool isLoading;
  @override
  final int page;

  @override
  String toString() {
    return 'GradeSearchState.loaded(grades: $grades, isLastPage: $isLastPage, isLoading: $isLoading, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.grades, grades) ||
                const DeepCollectionEquality().equals(other.grades, grades)) &&
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
      const DeepCollectionEquality().hash(grades) ^
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
        Result loaded(
            List<Grade> grades, bool isLastPage, bool isLoading, int page),
    @required Result failed(Failure error),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(failed != null);
    return loaded(grades, isLastPage, isLoading, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(
        List<Grade> grades, bool isLastPage, bool isLoading, int page),
    Result failed(Failure error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(grades, isLastPage, isLoading, page);
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

abstract class Loaded implements GradeSearchState {
  const factory Loaded(
      {List<Grade> grades,
      bool isLastPage,
      bool isLoading,
      int page}) = _$Loaded;

  List<Grade> get grades;
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

class _$FailedCopyWithImpl<$Res> extends _$GradeSearchStateCopyWithImpl<$Res>
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
    return 'GradeSearchState.failed(error: $error)';
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
        Result loaded(
            List<Grade> grades, bool isLastPage, bool isLoading, int page),
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
        List<Grade> grades, bool isLastPage, bool isLoading, int page),
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

abstract class Failed implements GradeSearchState {
  const factory Failed({Failure error}) = _$Failed;

  Failure get error;
  $FailedCopyWith<Failed> get copyWith;
}
