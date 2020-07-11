import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/grade_utils.dart';
import '../../../../lang/localizations.dart';
import '../../domain/entities/grade.dart';
import '../grade_bloc/grade_bloc.dart';

class YearGradeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.of<GradeBloc>(context).state.maybeMap(
          orElse: () => Container(),
          loaded: (state) {
            if (state.grades.isEmpty) {
              return Container();
            }

            final items = _yearGPA(state);

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
                        AppLocalizations.of(context).translate('LABEL_YEAR'),
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
                        AppLocalizations.of(context).translate('LABEL_GPA'),
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
                for (final item in items)
                  TableRow(
                    children: <Widget>[
                      ListTile(
                        dense: true,
                        title: Text(
                          item['year'],
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                      Center(
                        child: Text(
                          item['credit'],
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                      Center(
                        child: Text(
                          item['gpa'],
                          style: Theme.of(context).primaryTextTheme.subtitle1,
                        ),
                      ),
                    ],
                  ),
              ],
            );
          },
        );
  }

  List<Map<String, String>> _yearGPA(Loaded state) {
    final Map<int, List<Grade>> temp = {};
    for (final grade in state.grades) {
      if (!temp.containsKey(grade.year)) {
        temp[grade.year] = [];
      }
      temp[grade.year].add(grade);
    }

    final List<Map<String, String>> result = [];
    for (final key in temp.keys) {
      double totalCredit = 0;
      double credit = 0;
      double gp = 0;

      for (final grade in temp[key]) {
        totalCredit += grade.credit;
        if (isCoursePassed(grade)) {
          credit += grade.credit;
          gp += grade.gp;
        }
      }

      result.add({
        'year': key.toString(),
        'gpa': (gp / totalCredit).toStringAsFixed(2),
        'credit': credit.toString(),
      });
    }

    result.sort((b, c) => int.parse(b['year']) - int.parse(c['year']));
    return result;
  }
}
