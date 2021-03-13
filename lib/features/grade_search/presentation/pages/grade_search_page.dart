import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../grade_search_bloc/grade_search_bloc.dart' as gsb;
import '../grade_search_filter_bloc/grade_search_filter_bloc.dart' as gsfb;
import 'grade_search_loaded_page.dart';

class GradeSearchPage extends StatefulWidget {
  @override
  _GradeSearchPageState createState() => _GradeSearchPageState();
}

class _GradeSearchPageState extends State<GradeSearchPage> {
  // to show filter value
  String _year;
  String _semester;
  String _subject;
  String _grade;
  String _day;
  String _period;
  bool _isIntensive = false;
  bool _isMyself = false;
  bool _teacher = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<gsfb.GradeSearchFilterBloc>()..add(const gsfb.GradeSearchFilterEvent.fetchGradeSearchFilter()),
        ),
        BlocProvider(
          create: (context) => getIt<gsb.GradeSearchBloc>(),
        ),
      ],
      child: BlocConsumer<gsfb.GradeSearchFilterBloc, gsfb.GradeSearchFilterState>(
        listener: (context, state) {
          state.maybeMap(
            loaded: (state) {
              // init value
              setState(() {
                _year = (DateTime.now().year - 1).toString();
                _semester = state.filter.htmlGakkiNo.keys.elementAt(0);
                _subject = state.filter.htmlGakka.keys.elementAt(0);
                _grade = state.filter.htmlGakunen.keys.elementAt(0);
                _day = state.filter.htmlYobi.keys.elementAt(0);
                _period = state.filter.htmlJigen.keys.elementAt(0);
              });
            },
            orElse: () {},
          );
        },
        builder: (pContext, gsfbState) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: HeroInput(
                hintText: AppLocalizations.of(context).translate('HINTTEXT_GRADE_SEARCH'),
                tag: 'grade_sreach',
                onTap: () {
                  if (BlocProvider.of<gsb.GradeSearchBloc>(pContext).state is! gsb.Initial) {
                    BlocProvider.of<gsb.GradeSearchBloc>(pContext).add(gsb.GradeSearchEvent.init());
                  }
                },
                onSubmitted: (key) => gsfbState.maybeMap(
                  orElse: () => null,
                  loaded: (state) => BlocProvider.of<gsb.GradeSearchBloc>(pContext).add(
                    gsb.GradeSearchEvent.search(
                      key: key,
                      year: _year,
                      semester: state.filter.htmlGakkiNo[_semester] as String,
                      subject: state.filter.htmlGakka[_subject] as String,
                      grade: state.filter.htmlGakunen[_grade] as String,
                      day: state.filter.htmlYobi[_day] as String,
                      period: state.filter.htmlJigen[_period] as String,
                      isIntensive: _isIntensive,
                      isMyself: _isMyself,
                      teacher: _teacher,
                    ),
                  ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () => Navigator.pop(pContext),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                )
              ],
            ),
            body: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
              child: BlocBuilder<gsb.GradeSearchBloc, gsb.GradeSearchState>(
                builder: (context, gsbState) {
                  return gsbState.map(
                    // when initial: show filter
                    initial: (_) => _filteWidget(context.read<gsfb.GradeSearchFilterBloc>(), gsfbState),
                    loading: (_) => Center(child: CircularProgressIndicator()),
                    loaded: (state) => GradeSearchLoadedPage(
                      grades: state.grades,
                      isLastPage: state.isLastPage,
                      isLoading: state.isLoading,
                      page: state.page,
                    ),
                    failed: (state) => ListView(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height,
                          child: FailureWidget(
                            error: state.error,
                            retry: () => pContext.read<gsb.GradeSearchBloc>().add(gsb.GradeSearchEvent.init()),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _filteWidget(gsfb.GradeSearchFilterBloc bloc, gsfb.GradeSearchFilterState state) {
    return state.map(
      initial: (_) => Center(child: CircularProgressIndicator()),
      loading: (_) => Center(child: CircularProgressIndicator()),
      failed: (state) => FailureWidget(
        error: state.error,
        retry: () => bloc.add(gsfb.GradeSearchFilterEvent.fetchGradeSearchFilter()),
      ),
      loaded: (state) => ListView(
        children: <Widget>[
          Container(
            color: Theme.of(context).backgroundColor,
            child: ListTile(
              dense: true,
              title: Text(
                AppLocalizations.of(context).translate('LABEL_FILTER'),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black38,
                ),
              ),
            ),
          ),
          Divider(height: 0.0),
          FilterCheckbox(
            text: AppLocalizations.of(context).translate('LABEL_SEARCH_TEACHER'),
            value: _teacher,
            onChanged: (val) {
              setState(() {
                _teacher = val;
              });
            },
          ),
          FilterSelector(
            title: AppLocalizations.of(context).translate('LABEL_YEAR'),
            value: _year,
            items: state.filter.htmlNendo.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlJigen.keys.toList().indexOf(_period)),
            onSelectedItemChanged: (i) => setState(
              () {
                _year = state.filter.htmlNendo[i];
              },
            ),
          ),
          FilterSelector(
            title: AppLocalizations.of(context).translate('LABEL_SEMESTER'),
            value: _semester,
            items: state.filter.htmlGakkiNo.keys.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlJigen.keys.toList().indexOf(_period)),
            onSelectedItemChanged: (i) => setState(
              () {
                _semester = state.filter.htmlGakkiNo.keys.elementAt(i);
              },
            ),
          ),
          FilterSelector(
            title: AppLocalizations.of(context).translate('LABEL_SUBJECT'),
            value: _subject,
            items: state.filter.htmlGakka.keys.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlJigen.keys.toList().indexOf(_period)),
            onSelectedItemChanged: (i) => setState(
              () {
                _subject = state.filter.htmlGakka.keys.elementAt(i);
              },
            ),
          ),
          FilterSelector(
            title: AppLocalizations.of(context).translate('LABEL_GRADE'),
            value: _grade,
            items: state.filter.htmlGakunen.keys.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlJigen.keys.toList().indexOf(_period)),
            onSelectedItemChanged: (i) => setState(
              () {
                _grade = state.filter.htmlGakunen.keys.elementAt(i);
              },
            ),
          ),
          FilterSelector(
            title: AppLocalizations.of(context).translate('LABEL_DAY_OF_THE_WEEK'),
            value: _day,
            items: state.filter.htmlYobi.keys.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlJigen.keys.toList().indexOf(_period)),
            onSelectedItemChanged: (i) => setState(
              () {
                _day = state.filter.htmlYobi.keys.elementAt(i);
              },
            ),
          ),
          FilterSelector(
            title: AppLocalizations.of(context).translate('LABEL_PERIOD'),
            value: _period,
            items: state.filter.htmlJigen.keys.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlJigen.keys.toList().indexOf(_period)),
            onSelectedItemChanged: (i) => setState(
              () {
                _period = state.filter.htmlJigen.keys.elementAt(i);
              },
            ),
          ),
          FilterBoolSelector(
            text: AppLocalizations.of(context).translate('LABEL_INTENSIVE_COURSE'),
            value: _isIntensive,
            onChanged: (v) => setState(() {
              _isIntensive = v;
            }),
          ),
          FilterBoolSelector(
            text: AppLocalizations.of(context).translate('LABEL_ONLY_MYSELF'),
            value: _isMyself,
            onChanged: (v) => setState(() {
              _isMyself = v;
            }),
          ),
        ],
      ),
    );
  }
}
