import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../lang/localizations.dart';
import '../../domain/entities/curriculum.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../../domain/entities/curriculum_setting.dart';
import '../../domain/entities/show_mode.dart';
import '../curriculum_detail_bloc/curriculum_detail_bloc.dart' as cdb;
import '../curriculum_setting_bloc/curriculum_setting_bloc.dart' as csb;
import 'curriculum_table_item.dart';

class CurriculumTableCard extends StatefulWidget {
  final List<Curriculum> curriculums;
  final ShowMode mode;
  final bool smallItem;
  final Function(Curriculum) itemOnTap;

  const CurriculumTableCard({this.curriculums, this.mode, this.smallItem, this.itemOnTap});

  @override
  _CurriculumTableCardState createState() => _CurriculumTableCardState();
}

class _CurriculumTableCardState extends State<CurriculumTableCard> {
  ShowModeDetail get mode => widget.mode.map(
        regular: (_) => ShowModeDetail.regular(),
        weekend: (_) => ShowModeDetail.weekend(),
        night: (_) => ShowModeDetail.night(),
        nightWeekend: (_) => ShowModeDetail.nightWeekend(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<csb.CurriculumSettingBloc, csb.CurriculumSettingState>(
      builder: (context, settingState) => BlocBuilder<cdb.CurriculumDetailBloc, cdb.CurriculumDetailState>(
        builder: (context, detailState) => Table(
          defaultColumnWidth: FractionColumnWidth(mode.width),
          columnWidths: const <int, TableColumnWidth>{0: FractionColumnWidth(0.1)},
          border: TableBorder(
            horizontalInside: BorderSide(
              color: Colors.black26,
              width: 0.0,
            ),
            verticalInside: BorderSide(
              color: Colors.black26,
              width: 0.0,
            ),
          ),
          children: _tableRows(detailState, settingState),
        ),
      ),
    );
  }

  List<TableRow> _tableRows(cdb.CurriculumDetailState detailState, csb.CurriculumSettingState settingState) {
    final curriculums = _sortCurriculum(widget.curriculums);
    final List<TableRow> table = List.generate(
      mode.period + 1,
      (row) => TableRow(children: List.generate(mode.day + 1, (col) => _tableCell(row, col, curriculums))),
    );

    final Map<String, CurriculumSetting> settingTable = settingState.maybeMap(
      orElse: () => {},
      loaded: (settingState) => getSettingTable(settingState.settings),
    );

    final Map<String, CurriculumDetail> detailTable = detailState.maybeMap(
      orElse: () => {},
      loaded: (detailState) => getDetailTable(detailState.details),
    );

    if (widget.smallItem) {
      for (var i = 1; i <= mode.period; i++) {
        for (var j = 1; j <= mode.day; j++) {
          table[i].children[j] = Column(
            children: curriculums[i][j]
                .map((e) => CurriculumTableSmallItem(
                      onTap: widget.itemOnTap,
                      curriculum: e,
                      detail: detailTable.containsKey(e.code) ? detailTable[e.code] : null,
                      setting: e.code != null ? (settingTable.containsKey(e.code) ? settingTable[e.code] : null) : (settingTable.containsKey(e.course) ? settingTable[e.course] : null),
                    ))
                .toList(),
          );
        }
      }
    } else {
      for (var i = 1; i <= mode.period; i++) {
        for (var j = 1; j <= mode.day; j++) {
          table[i].children[j] = Column(
            children: curriculums[i][j].map((e) {
              return CurriculumTableItem(
                onTap: widget.itemOnTap,
                curriculum: e,
                detail: detailTable.containsKey(e.code) ? detailTable[e.code] : null,
                setting: e.code != null ? (settingTable.containsKey(e.code) ? settingTable[e.code] : null) : (settingTable.containsKey(e.course) ? settingTable[e.course] : null),
              );
            }).toList(),
          );
        }
      }
    }

    return table;
  }

  List<List<List<Curriculum>>> _sortCurriculum(List<Curriculum> courses) {
    final List<List<List<Curriculum>>> result = List.generate(mode.period + 1, (i) => List.generate(mode.day + 1, (_) => []));
    for (final course in courses) {
      final period = course.period;
      final day = course.day;
      if (period > mode.period || day > mode.day) {
        continue;
      }

      result[period][day].add(course);
    }
    return result;
  }

  Map<String, CurriculumSetting> getSettingTable(List<CurriculumSetting> settings) {
    final Map<String, CurriculumSetting> result = {};
    for (final setting in settings) {
      result[setting.code] = setting;
      result[setting.course] = setting;
    }
    return result;
  }

  Map<String, CurriculumDetail> getDetailTable(List<CurriculumDetail> details) {
    final Map<String, CurriculumDetail> result = {};
    for (final detail in details) {
      result[detail.code] = detail;
    }
    return result;
  }

  Widget _tableCell(int x, int y, List<List<List<Curriculum>>> curriculums) {
    if (x == 0 && y == 0) {
      return Container(
        height: 24.0,
        decoration: BoxDecoration(
          color: Theme.of(context).accentColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0)),
        ),
        child: Center(
          child: Icon(
            Icons.list,
            color: Colors.white,
            size: 24.0,
          ),
        ),
      );
    } else if (y == 0) {
      return _timeCell(x, curriculums);
    } else if (x == 0) {
      return _dayCell(y);
    }
    return Container();
  }

  Widget _dayCell(int y) {
    return Container(
      height: 24.0,
      decoration: BoxDecoration(
        color: Theme.of(context).accentColor,
        borderRadius: y == mode.day ? BorderRadius.only(topRight: Radius.circular(10.0)) : null,
      ),
      child: Center(
        child: Text(
          [
            '',
            AppLocalizations.of(context).translate('LABEL_MON'),
            AppLocalizations.of(context).translate('LABEL_TUS'),
            AppLocalizations.of(context).translate('LABEL_WED'),
            AppLocalizations.of(context).translate('LABEL_THU'),
            AppLocalizations.of(context).translate('LABEL_FRI'),
            AppLocalizations.of(context).translate('LABEL_STA'),
            AppLocalizations.of(context).translate('LABEL_SUN'),
          ][y],
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: y == DateTime.now().weekday ? FontWeight.bold : FontWeight.w400,
            color: y == DateTime.now().weekday ? Colors.white : Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _timeCell(int x, List<List<List<Curriculum>>> curriculums) {
    final times = [
      ['08:50', '10:20'],
      ['10:30', '12:00'],
      ['12:50', '14:20'],
      ['14:30', '16:00'],
      ['16:10', '17:40'],
      ['17:50', '19:20'],
      ['19:30', '21:00'],
    ];

    int max = 1;
    for (var i = 1; i <= mode.day; i++) {
      if (max < curriculums[x][i].length) {
        max = curriculums[x][i].length;
      }
    }

    final height = (max * (widget.smallItem ? 48 : 61)).toDouble();

    return Container(
      height: height,
      margin: EdgeInsets.symmetric(vertical: 1.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 3.0),
              Text(
                times[x - 1][0],
                maxLines: 1,
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$x.",
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: x == _getPeriodInt() ? FontWeight.bold : FontWeight.w400,
                  color: x == _getPeriodInt() ? Colors.blue[900] : Colors.black87,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                times[x - 1][1],
                maxLines: 1,
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              SizedBox(width: 3.0),
            ],
          ),
        ],
      ),
    );
  }

  int _getPeriodInt() {
    final hour = DateTime.now().hour;
    final minute = DateTime.now().minute;
    if (hour >= 21) {
      return -1;
    }
    if (hour >= 19 && minute >= 20 || (hour >= 20 && hour <= 21)) {
      return 7;
    }
    if (hour >= 17 && minute > 40 || hour >= 18) {
      return 6;
    }
    if (hour >= 16 && minute >= 0 || (hour >= 17 && minute <= 40)) {
      return 5;
    }
    if (hour >= 14 && minute >= 30 || hour >= 15) {
      return 4;
    }
    if (hour >= 12 && minute >= 0) {
      return 3;
    }
    if (hour >= 10 && minute >= 20 || hour >= 11) {
      return 2;
    }
    if (hour >= 8 && minute >= 50 || hour >= 9) {
      return 1;
    }
    return -1;
  }
}
