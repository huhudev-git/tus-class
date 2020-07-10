import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';
import '../../domain/entities/attendance_rate.dart';
import '../../domain/entities/curriculum.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../attendance_rate_bloc/attendance_rate_bloc.dart';

class AttendanceRateRow extends StatelessWidget {
  final Curriculum curriculum;
  final CurriculumDetail detail;

  const AttendanceRateRow({Key key, this.curriculum, this.detail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color;
    Color iconColor;
    IconData icon;

    return BlocBuilder<AttendanceRateBloc, AttendanceRateState>(
      builder: (context, state) {
        final rate = state
            .maybeMap(
              orElse: () => AttendanceRate.empty(),
              loaded: (state) {
                return state.rates.firstWhere(
                  (e) {
                    return e.code == curriculum?.code;
                  },
                  orElse: () => AttendanceRate.empty(),
                );
              },
            )
            .rate;

        if (rate == -1) {
          color = Colors.grey;
          iconColor = Colors.grey;
          icon = Icons.not_interested;
        } else if (rate < 60) {
          color = Colors.black54;
          iconColor = Colors.black54;
          icon = Icons.sentiment_very_dissatisfied;
        } else if (rate < 70) {
          color = Colors.red;
          iconColor = Colors.red;
          icon = Icons.mood_bad;
        } else if (rate < 80) {
          color = Colors.orange;
          iconColor = Colors.orangeAccent;
          icon = Icons.sentiment_dissatisfied;
        } else {
          color = Theme.of(context).accentColor;
          iconColor = Colors.green;
          icon = Icons.mood;
        }

        return Row(
          children: <Widget>[
            SizedBox(width: 15.0),
            Text(
              AppLocalizations.of(context).translate('LABEL_ATTENDANCE_RATE'),
              textScaleFactor: 0.9,
              style: Theme.of(context).primaryTextTheme.headline6.copyWith(
                    color: Theme.of(context).accentColor,
                  ),
            ),
            SizedBox(width: 15.0),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                      depth: rate != -1 ? 10 : 0,
                    ),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: rate,
                          child: Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: color,
                              borderRadius: rate != 100 ? BorderRadius.horizontal(left: Radius.circular(15.0)) : BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 100 - rate,
                          child: Container(
                            height: 10.0,
                            decoration: BoxDecoration(
                              color: rate != -1 ? Theme.of(context).backgroundColor : Colors.grey,
                              borderRadius: rate != 0 ? BorderRadius.horizontal(right: Radius.circular(15.0)) : BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    child: Text(
                      "$rate%",
                      style: TextStyle(
                        fontSize: 8.0,
                        color: rate < 50 ? Colors.grey : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 15.0),
            Neumorphic(
              padding: EdgeInsets.all(0),
              child: Icon(icon, color: iconColor),
            ),
            SizedBox(width: 15.0),
            Neumorphic(
              padding: EdgeInsets.all(0),
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(2)),
              ),
              child: _creditIcon(detail?.credit?.toInt() ?? -1, context),
            ),
            SizedBox(width: 20.0),
          ],
        );
      },
    );
  }

  Widget _creditIcon(int credit, BuildContext context) {
    IconData icon;
    Color color = Theme.of(context).accentColor;
    switch (credit) {
      case -1:
        icon = Icons.check_box_outline_blank;
        color = Colors.grey;
        break;
      case 1:
        icon = Icons.looks_one;
        break;
      case 2:
        icon = Icons.looks_two;
        break;
      case 3:
        icon = Icons.looks_3;
        break;
      case 4:
        icon = Icons.looks_4;
        break;
      case 5:
        icon = Icons.looks_5;
        break;
      case 6:
        icon = Icons.looks_6;
        break;
      default:
        return Text(
          credit.toString(),
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.grey,
          ),
        );
    }
    return Icon(
      icon,
      color: color,
      size: 25.0,
    );
  }
}
