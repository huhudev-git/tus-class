import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../syllabus_search_bloc/syllabus_search_bloc.dart' as ssb;
import '../syllabus_search_filter_bloc/syllabus_search_filter_bloc.dart' as ssfb;
import 'syllabus_search_loaded_page.dart';

class SyllabusSearchPage extends StatefulWidget {
  @override
  _SyllabusSearchPageState createState() => _SyllabusSearchPageState();
}

class _SyllabusSearchPageState extends State<SyllabusSearchPage> {
  // to show filter value
  String _year;
  String _semester;
  String _category;
  String _subject;
  String _grade;
  String _day;
  String _period;
  bool _isIntensive = false;
  bool _teacher = false;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<ssfb.SyllabusSearchFilterBloc>()..add(ssfb.SyllabusSearchFilterEvent.fetchFilter()),
        ),
        BlocProvider(
          create: (context) => getIt<ssb.SyllabusSearchBloc>(),
        ),
      ],
      child: BlocConsumer<ssfb.SyllabusSearchFilterBloc, ssfb.SyllabusSearchFilterState>(
        listener: (context, state) {
          state.maybeMap(
            loaded: (state) {
              // init value
              setState(() {
                _year = (DateTime.now().year - 1).toString();
                _semester = state.filter.htmlGakkiNo.keys.elementAt(0);
                _category = state.filter.htmlKamokJugyo.keys.elementAt(0);
                _subject = state.filter.htmlGakka.keys.elementAt(0);
                _grade = state.filter.htmlGakunen.keys.elementAt(0);
                _day = state.filter.htmlYobi.keys.elementAt(0);
                _period = state.filter.htmlJigen.keys.elementAt(0);
              });
            },
            orElse: () {},
          );
        },
        builder: (pContext, ssfbState) {
          return Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: HeroInput(
                hintText: AppLocalizations.of(context).translate('HINTTEXT_SYLLABUS_SEARCH'),
                tag: 'syllabus_search',
                onTap: () {
                  if (pContext.bloc<ssb.SyllabusSearchBloc>().state is! ssb.Initial) {
                    pContext.bloc<ssb.SyllabusSearchBloc>().add(ssb.SyllabusSearchEvent.init());
                  }
                },
                onSubmitted: (key) => ssfbState.maybeMap(
                  orElse: () => null,
                  loaded: (state) => BlocProvider.of<ssb.SyllabusSearchBloc>(pContext).add(
                    ssb.SyllabusSearchEvent.search(
                      key: key,
                      year: _year,
                      semester: state.filter.htmlGakkiNo[_semester],
                      category: state.filter.htmlKamokJugyo[_category],
                      subject: state.filter.htmlGakka[_subject],
                      grade: state.filter.htmlGakunen[_grade],
                      day: state.filter.htmlYobi[_day],
                      period: state.filter.htmlJigen[_period],
                      isIntensive: _isIntensive,
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
              child: BlocBuilder<ssb.SyllabusSearchBloc, ssb.SyllabusSearchState>(
                builder: (context, ssbState) {
                  return ssbState.map(
                    // when initial: show filter
                    initial: (_) => _filteWidget(context.bloc<ssfb.SyllabusSearchFilterBloc>(), ssfbState),
                    loading: (_) => Center(child: CircularProgressIndicator()),
                    loaded: (state) => SyllabusSearchLoadedPage(
                      syllabusList: state.syllabusList,
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
                            retry: () => pContext.bloc<ssb.SyllabusSearchBloc>().add(ssb.SyllabusSearchEvent.init()),
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

  Widget _filteWidget(ssfb.SyllabusSearchFilterBloc bloc, ssfb.SyllabusSearchFilterState state) {
    return state.map(
      initial: (_) => Center(child: CircularProgressIndicator()),
      loading: (_) => Center(child: CircularProgressIndicator()),
      failed: (state) => FailureWidget(
        error: state.error,
        retry: () => bloc.add(ssfb.SyllabusSearchFilterEvent.fetchFilter()),
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
            title: AppLocalizations.of(context).translate('LABEL_CATEGORY'),
            value: _category,
            items: state.filter.htmlKamokJugyo.keys.toList(),
            controller: FixedExtentScrollController(initialItem: state.filter.htmlKamokJugyo.keys.toList().indexOf(_semester)),
            onSelectedItemChanged: (i) => setState(
              () {
                _category = state.filter.htmlKamokJugyo.keys.elementAt(i);
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
        ],
      ),
    );
  }
}
