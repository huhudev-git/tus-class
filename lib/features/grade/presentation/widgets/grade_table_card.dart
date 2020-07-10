import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/grade_utils.dart';
import '../../../../lang/localizations.dart';
import '../grade_bloc/grade_bloc.dart';
import 'chart_color.dart';

class GradeTableCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<GradeBloc>(context).state.maybeMap(
          orElse: () => Container(),
          loaded: (state) {
            if (state.grades.isEmpty) {
              return Container();
            }

            final evaluations = state.grades.map((e) => e.evaluation).toSet().toList();
            final evaluation2IntConverter = getEvaluation2IntConverter(evaluations);

            return Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              columnWidths: const <int, TableColumnWidth>{
                0: FractionColumnWidth(0.6),
                1: FractionColumnWidth(0.2),
                2: FractionColumnWidth(0.2),
              },
              children: [
                TableRow(
                  children: [
                    ListTile(
                      title: Text(
                        AppLocalizations.of(context).translate('LABEL_COURSE'),
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                    ),
                    Center(
                      child: Text(
                        AppLocalizations.of(context).translate('LABEL_CREDIT'),
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                    ),
                    Center(
                      child: Text(
                        AppLocalizations.of(context).translate('LABEL_GRADE'),
                        style: Theme.of(context).primaryTextTheme.headline6,
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: const [
                    Divider(height: 0.0),
                    Divider(height: 0.0),
                    Divider(height: 0.0),
                  ],
                ),
                for (final grade in state.grades)
                  TableRow(
                    children: <Widget>[
                      ListTile(
                        dense: true,
                        title: Text(
                          grade.course,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                      Center(
                        child: Text(
                          '${grade.credit}',
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                      Center(
                        child: Text(
                          full2half(grade.evaluation),
                          style: Theme.of(context).primaryTextTheme.headline6.copyWith(
                                color: labelcolor[evaluations.length - 1][evaluation2IntConverter[grade.evaluation]],
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                      ),
                    ],
                  ),
              ],
            );
          },
        );
  }
}
