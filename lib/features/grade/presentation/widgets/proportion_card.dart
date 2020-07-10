import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../core/utils/grade_utils.dart';
import '../../../../design-system/components/components.dart';
import '../../../../lang/localizations.dart';
import '../grade_bloc/grade_bloc.dart';
import 'chart_color.dart';

class ProportionCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final state = BlocProvider.of<GradeBloc>(context).state;
    final Map<String, int> evaluations = state.maybeMap(
      orElse: () => {},
      loaded: (state) => getEvaluationLength(state.grades),
    );
    evaluations.removeWhere((key, value) => value == 0);

    return Padding(
      padding: EdgeInsets.only(left: 17.0, right: 17.0, bottom: 17.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              AppLocalizations.of(context).translate('TITLE_PROPORTION'),
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
          ),
          Container(
            height: 180.0,
            child: state.maybeMap(
              orElse: () => Center(child: CircularProgressIndicator()),
              failed: (state) => CardFailureWidget(
                error: state.error,
                retry: () => context.bloc<GradeBloc>().add(GradeEvent.fetchGrade()),
              ),
              loaded: (state) {
                return Row(
                  children: [
                    SizedBox(
                      height: 180.0,
                      width: 180.0,
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(10.0),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                              ),
                              child: Container(),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(19.5),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                                depth: -3,
                              ),
                              child: Container(),
                            ),
                          ),
                          DonutPieChart(
                            _createData(evaluations),
                            animate: false,
                          ),
                          Container(
                            padding: EdgeInsets.all(63.0),
                            child: Neumorphic(
                              style: NeumorphicStyle(
                                boxShape: NeumorphicBoxShape.circle(),
                                shape: NeumorphicShape.convex,
                                depth: 2.0,
                                intensity: 0.55,
                              ),
                              child: Container(),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(left: MediaQuery.of(context).size.width / 9),
                        child: Column(
                          children: [
                            SizedBox(height: 15.0),
                            for (var i = 0; i < evaluations.length; i++)
                              Container(
                                margin: EdgeInsets.only(bottom: 5.0),
                                child: Row(
                                  children: [
                                    Neumorphic(
                                      style: NeumorphicStyle(
                                        boxShape: NeumorphicBoxShape.circle(),
                                        border: NeumorphicBorder(
                                          color: labelcolor[evaluations.length - 1][i],
                                          width: 0.1,
                                        ),
                                      ),
                                      child: Container(
                                        width: 15,
                                        height: 15,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: labelcolor[evaluations.length - 1][i],
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Text('${evaluations.keys.elementAt(i)}: ${evaluations.values.elementAt(i)}'),
                                  ],
                                ),
                              ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<charts.Series<LinearGrades, dynamic>> _createData(Map<String, int> evaluations) {
    final List<LinearGrades> data = [];
    for (var i = 0; i < evaluations.length; i++) {
      final value = evaluations.values.elementAt(i);
      final keys = evaluations.keys.elementAt(i);
      data.add(LinearGrades(keys, value, chartColor[evaluations.length - 1][i]));
    }

    return [
      charts.Series<LinearGrades, dynamic>(
        id: 'Grade',
        colorFn: (LinearGrades grade, _) => grade.color,
        domainFn: (LinearGrades grade, _) => grade.evaluation,
        measureFn: (LinearGrades grade, _) => grade.length,
        data: data,
      )
    ];
  }
}

class DonutPieChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  const DonutPieChart(this.seriesList, {this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
      defaultRenderer: charts.ArcRendererConfig(
        arcWidth: 42,
        strokeWidthPx: 0.0,
      ),
    );
  }
}

class LinearGrades {
  final int length;
  final String evaluation;
  final charts.Color color;

  LinearGrades(this.evaluation, this.length, this.color);
}
