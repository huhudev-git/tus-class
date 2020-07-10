import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../../../injection_container.dart';
import '../../../../lang/localizations.dart';
import '../../../syllabus_search/presentation/pages/syllabus_search_page.dart';
import '../../domain/entities/curriculum.dart';
import '../../domain/entities/show_mode.dart';
import '../all_curriculum_bloc/all_curriculum_bloc.dart' as acb;
import '../attendance_rate_bloc/attendance_rate_bloc.dart' as arb;
import '../curriculum_bloc/curriculum_bloc.dart' as cb;
import '../curriculum_detail_bloc/curriculum_detail_bloc.dart' as cdb;
import '../curriculum_setting_bloc/curriculum_setting_bloc.dart' as csb;
import '../curriculum_show_mode_bloc/curriculum_show_mode_bloc.dart' as csmb;
import '../widgets/attendance_rate_card.dart';
import '../widgets/course_card.dart';
import '../widgets/curriculum_table_card.dart';
import '../widgets/switch_semester_widget.dart';

class CurriculumPage extends StatefulWidget {
  @override
  _CurriculumPageState createState() => _CurriculumPageState();
}

class _CurriculumPageState extends State<CurriculumPage> with AutomaticKeepAliveClientMixin {
  bool _isOwner = true;
  Curriculum _select;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<csmb.CurriculumShowModeBloc>()..add(csmb.CurriculumShowModeEvent.init()),
        ),
        BlocProvider(
          create: (context) => getIt<cb.CurriculumBloc>()..add(cb.CurriculumEvent.fetchCurriculum(isRefresh: false)),
        ),
        BlocProvider(
          create: (context) => getIt<acb.AllCurriculumBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<cdb.CurriculumDetailBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<arb.AttendanceRateBloc>()..add(arb.AttendanceRateEvent.fetchAttendanceRate()),
        ),
        BlocProvider(
          create: (context) => getIt<csb.CurriculumSettingBloc>()..add(csb.CurriculumSettingEvent.getAllCurriculumSetting()),
        ),
      ],
      child: BlocBuilder<csmb.CurriculumShowModeBloc, csmb.CurriculumShowModeState>(
        builder: (context, csmBstate) {
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              title: Text(
                AppLocalizations.of(context).translate('TITLE_TIMETABLE'),
                style: Theme.of(context).appBarTheme.textTheme.headline6,
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    csmBstate.maybeMap(
                      orElse: () => Icons.view_agenda,
                      loaded: (state) => state.mode.map(
                        regular: (_) => ShowModeDetail.regular().icon,
                        weekend: (_) => ShowModeDetail.weekend().icon,
                        night: (_) => ShowModeDetail.night().icon,
                        nightWeekend: (_) => ShowModeDetail.nightWeekend().icon,
                      ),
                    ),
                  ),
                  onPressed: () => context.bloc<csmb.CurriculumShowModeBloc>().add(csmb.CurriculumShowModeEvent.switchShowMode()),
                ),
              ],
            ),
            body: ListView(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              children: <Widget>[
                SizedBox(height: 15.0),
                HeroInput(
                  tag: 'syllabus_search',
                  hintText: AppLocalizations.of(context).translate('HINTTEXT_SYLLABUS_SEARCH'),
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SyllabusSearchPage())),
                ),
                SwitchSemesterWidget(
                  isOwner: _isOwner,
                  onMainButtomClick: () {
                    setState(() {
                      _isOwner = !_isOwner;

                      if (_isOwner) {
                        context.bloc<cb.CurriculumBloc>().state.maybeMap(
                              orElse: () {},
                              loaded: (state) {
                                context.bloc<cb.CurriculumBloc>().add(
                                      cb.CurriculumEvent.fetchCurriculum(
                                        year: state.timeTable.year,
                                        semesterValue: state.timeTable.semesterValue,
                                        isRefresh: false,
                                      ),
                                    );
                              },
                            );
                      } else {
                        context.bloc<acb.AllCurriculumBloc>().add(acb.AllCurriculumEvent.fetchAllCurriculum(isRefresh: false));
                      }
                    });
                  },
                ),
                Neumorphic(
                  style: NeumorphicStyle(
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                  ),
                  child: AnimatedCrossFade(
                    firstChild: _curriculumTable(csmBstate),
                    secondChild: _allCurriculumTable(csmBstate),
                    crossFadeState: _isOwner ? CrossFadeState.showFirst : CrossFadeState.showSecond,
                    duration: Duration(seconds: 1),
                  ),
                ),
                SizedBox(height: 15.0),
                CourseCard(curriculum: _select),
                SizedBox(height: 20.0),
                AttendanceRateCard(),
                SizedBox(height: 20.0),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _allCurriculumTable(csmb.CurriculumShowModeState csmBstate) {
    return BlocListener<acb.AllCurriculumBloc, acb.AllCurriculumState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loaded: (state) {
            if (state.timeTable.curriculums.isNotEmpty) {
              setState(() {
                _select ??= state.timeTable.curriculums.first;
              });
            }
            context.bloc<cdb.CurriculumDetailBloc>().add(cdb.CurriculumDetailEvent.fetchCurriculumDetail(curriculums: state.timeTable.curriculums));
          },
        );
      },
      child: BlocBuilder<acb.AllCurriculumBloc, acb.AllCurriculumState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => CurriculumTableCard(
              curriculums: const [],
              smallItem: true,
              mode: ShowMode.regular(),
            ),
            loading: (_) => CurriculumTableCard(
              smallItem: true,
              curriculums: const [],
              mode: ShowMode.regular(),
            ),
            failed: (state) => CardFailureWidget(
              error: state.error,
              retry: () => context.bloc<acb.AllCurriculumBloc>().add(acb.AllCurriculumEvent.fetchAllCurriculum()),
            ),
            loaded: (state) => CurriculumTableCard(
              smallItem: true,
              itemOnTap: (curriculum) => setState(() {
                _select = curriculum;
              }),
              curriculums: state.timeTable.curriculums,
              mode: csmBstate.maybeMap(
                orElse: () => ShowMode.regular(),
                loaded: (state) => state.mode,
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _curriculumTable(csmb.CurriculumShowModeState csmBstate) {
    return BlocConsumer<cb.CurriculumBloc, cb.CurriculumState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {},
          loaded: (state) {
            if (state.timeTable.curriculums.isNotEmpty) {
              setState(() {
                _select ??= state.timeTable.curriculums.first;
              });
            }
            context.bloc<cdb.CurriculumDetailBloc>().add(cdb.CurriculumDetailEvent.fetchCurriculumDetail(curriculums: state.timeTable.curriculums));
          },
        );
      },
      builder: (context, state) {
        return BlocBuilder<cb.CurriculumBloc, cb.CurriculumState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => CurriculumTableCard(
                curriculums: const [],
                smallItem: false,
                mode: ShowMode.regular(),
              ),
              loading: (_) => CurriculumTableCard(
                smallItem: false,
                curriculums: const [],
                mode: ShowMode.regular(),
              ),
              failed: (state) => CardFailureWidget(
                error: state.error,
                retry: () => context.bloc<cb.CurriculumBloc>().add(
                      cb.CurriculumEvent.fetchCurriculum(
                        isRefresh: false,
                      ),
                    ),
              ),
              loaded: (state) => CurriculumTableCard(
                smallItem: false,
                itemOnTap: (curriculum) => setState(() {
                  _select = curriculum;
                }),
                curriculums: state.timeTable.curriculums,
                mode: csmBstate.maybeMap(
                  orElse: () => ShowMode.regular(),
                  loaded: (state) => state.mode,
                ),
              ),
            );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}
