import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../design-system/components/components.dart';
import '../../../../lang/localizations.dart';
import '../all_curriculum_bloc/all_curriculum_bloc.dart' as acb;
import '../curriculum_bloc/curriculum_bloc.dart' as cb;
import '../curriculum_detail_bloc/curriculum_detail_bloc.dart' as cdd;

class RefreshButtom extends StatelessWidget {
  final bool isOwner;
  const RefreshButtom({Key key, this.isOwner}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 30.0,
      height: 30.0,
      child: isOwner
          ? NeumorphicButton(
              padding: EdgeInsets.all(0.0),
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              onPressed: () => _showDialog(
                context,
                () {
                  context.bloc<cb.CurriculumBloc>().state.maybeMap(
                        orElse: () {},
                        loaded: (state) {
                          context.bloc<cb.CurriculumBloc>().add(
                                cb.CurriculumEvent.fetchCurriculum(
                                  year: state.timeTable.year,
                                  semesterValue: state.timeTable.semesterValue,
                                  isRefresh: true,
                                ),
                              );
                        },
                      );
                  Navigator.of(context).pop();
                },
                () {
                  context.bloc<cb.CurriculumBloc>().state.maybeMap(
                        orElse: () {},
                        loaded: (state) {
                          context.bloc<cdd.CurriculumDetailBloc>().add(cdd.CurriculumDetailEvent.deleteCurriculumDetail());
                          context.bloc<cb.CurriculumBloc>().add(
                                cb.CurriculumEvent.fetchCurriculum(
                                  year: state.timeTable.year,
                                  semesterValue: state.timeTable.semesterValue,
                                  isRefresh: true,
                                ),
                              );
                        },
                      );

                  Navigator.of(context).pop();
                },
              ),
              child: BlocBuilder<cb.CurriculumBloc, cb.CurriculumState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => SpinRefreshIcon(),
                    loading: (_) => SpinRefreshIcon(),
                    failed: (_) => Icon(Icons.refresh),
                    loaded: (_) => Icon(Icons.refresh),
                  );
                },
              ),
            )
          : NeumorphicButton(
              padding: EdgeInsets.all(0.0),
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
              ),
              onPressed: () => _showDialog(
                context,
                () {
                  context.bloc<acb.AllCurriculumBloc>().state.maybeMap(
                      orElse: () {},
                      loaded: (state) {
                        context.bloc<acb.AllCurriculumBloc>().add(acb.AllCurriculumEvent.fetchAllCurriculum(isRefresh: true));
                      });
                  Navigator.of(context).pop();
                },
                () {
                  context.bloc<acb.AllCurriculumBloc>().state.maybeMap(
                      orElse: () {},
                      loaded: (state) {
                        context.bloc<cdd.CurriculumDetailBloc>().add(cdd.CurriculumDetailEvent.deleteCurriculumDetail());
                        context.bloc<acb.AllCurriculumBloc>().add(acb.AllCurriculumEvent.fetchAllCurriculum(isRefresh: true));
                      });
                  Navigator.of(context).pop();
                },
              ),
              child: BlocBuilder<acb.AllCurriculumBloc, acb.AllCurriculumState>(
                builder: (context, state) {
                  return state.map(
                    initial: (_) => SpinRefreshIcon(),
                    loading: (_) => SpinRefreshIcon(),
                    failed: (_) => Icon(Icons.refresh),
                    loaded: (_) => Icon(Icons.refresh),
                  );
                },
              ),
            ),
    );
  }

  Future<void> _showDialog(
    BuildContext context,
    VoidCallback onClickYes,
    VoidCallback onClickReset,
  ) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext contextD) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          title: Text(AppLocalizations.of(context).translate('TITLE_REFRESH_SCHEDULE')),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(AppLocalizations.of(context).translate('MESSAGE_REFRESH_TIMETABLE')),
                SizedBox(height: 15.0),
                Text(AppLocalizations.of(context).translate('MESSAGE_RESET_TIMETABLE')),
                SizedBox(height: 15.0),
                Text(AppLocalizations.of(context).translate('MESSAGE_SYLLABUS_LOADING_WARNING_TIMETABLE')),
              ],
            ),
          ),
          actions: <Widget>[
            NeumorphicButton(
              onPressed: onClickYes,
              child: Text(
                AppLocalizations.of(context).translate('LABEL_OK'),
                style: TextStyle(color: Colors.green),
              ),
            ),
            NeumorphicButton(
              onPressed: onClickReset,
              child: Text(
                AppLocalizations.of(context).translate('LABEL_RESET'),
                style: TextStyle(color: Colors.orange),
              ),
            ),
            NeumorphicButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                AppLocalizations.of(context).translate('LABEL_CANCEL'),
                style: TextStyle(color: Colors.red),
              ),
            ),
          ],
        );
      },
    );
  }
}
