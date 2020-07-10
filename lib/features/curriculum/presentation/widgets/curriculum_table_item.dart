import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/curriculum.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../../domain/entities/curriculum_setting.dart';
import '../curriculum_setting_bloc/curriculum_setting_bloc.dart';
import 'table_item_setting_dialog.dart';

class CurriculumTableItem extends StatelessWidget {
  final CurriculumSetting setting;
  final CurriculumDetail detail;
  final Curriculum curriculum;
  final Function(Curriculum) onTap;

  const CurriculumTableItem({
    Key key,
    this.detail,
    this.curriculum,
    this.setting,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      duration: Duration(seconds: 1),
      margin: EdgeInsets.all(3.0),
      height: 57.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(6.0),
        onLongPress: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (_) => TableItemSettingDialog(
              curriculum: curriculum,
              detail: detail,
              setting: setting,
              bloc: context.bloc<CurriculumSettingBloc>(),
            ),
          );
        },
        onTap: () => onTap(curriculum),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFEFEEEE),
            border: Border.all(color: _cardColor(setting?.form ?? detail?.form)),
            gradient: (setting?.form == null && detail == null) ? _getGradient(Colors.grey[50].value, Colors.grey[400].value, 12) : null,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                offset: Offset(-2.0, -2.0),
                blurRadius: 2.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(2.0, 2.0),
                blurRadius: 2.0,
              ),
            ],
          ),
          padding: EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    curriculum.course,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textScaleFactor: 0.7,
                    style: Theme.of(context).primaryTextTheme.subtitle1,
                  ),
                  Text(
                    curriculum.teacher,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textScaleFactor: 0.7,
                    style: Theme.of(context).primaryTextTheme.subtitle2,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      (setting != null && setting.room.isNotEmpty) ? setting.room : '000',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textScaleFactor: 0.7,
                      style: Theme.of(context).primaryTextTheme.subtitle2,
                    ),
                  ),
                  _cardIcon(detail?.credit?.toInt() ?? -1),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CurriculumTableSmallItem extends StatelessWidget {
  final CurriculumSetting setting;
  final CurriculumDetail detail;
  final Curriculum curriculum;
  final Function(Curriculum) onTap;

  const CurriculumTableSmallItem({
    Key key,
    this.detail,
    this.curriculum,
    this.setting,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      duration: Duration(seconds: 1),
      margin: EdgeInsets.all(3.0),
      height: 42.0,
      child: InkWell(
        borderRadius: BorderRadius.circular(6.0),
        onLongPress: () {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (_) => TableItemSettingDialog(
              curriculum: curriculum,
              detail: detail,
              setting: setting,
              bloc: context.bloc<CurriculumSettingBloc>(),
            ),
          );
        },
        onTap: () => onTap(curriculum),
        child: Container(
          decoration: BoxDecoration(
            color: Color(0xFFEFEEEE),
            border: Border.all(color: _cardColor(setting?.form ?? detail?.form)),
            gradient: (setting?.form == null && detail == null) ? _getGradient(Colors.grey[50].value, Colors.grey[400].value, 12) : null,
            borderRadius: BorderRadius.circular(6.0),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                offset: Offset(-2.0, -2.0),
                blurRadius: 2.0,
              ),
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: Offset(2.0, 2.0),
                blurRadius: 2.0,
              ),
            ],
          ),
          padding: EdgeInsets.only(left: 2.0, right: 2.0, top: 2.0, bottom: 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                curriculum.course,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 0.7,
                style: Theme.of(context).primaryTextTheme.subtitle1,
              ),
              Text(
                curriculum.teacher,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 0.7,
                style: Theme.of(context).primaryTextTheme.subtitle2,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

LinearGradient _getGradient(int color1, int color2, int number) {
  final List<Color> colors = [];
  final List<double> stops = [0.0];

  for (var x = 1; x < number; x++) {
    colors
      ..add(Color(color1))
      ..add(Color(color1))
      ..add(Color(color2))
      ..add(
        Color(color2),
      );
    stops
      ..add(x / number)
      ..add(x / number)
      ..add((x + 0.5) / number)
      ..add(
        (x + 0.5) / number,
      );
  }
  stops.removeLast();

  return LinearGradient(
    begin: FractionalOffset(0.0, 0.0),
    end: FractionalOffset(1.0, 1.0),
    colors: colors,
    stops: stops,
  );
}

Color _cardColor(String form) {
  if (form == null) {
    return Colors.grey;
  }
  if (form.contains("選択必修") || form.contains("選必")) {
    return Colors.blue[300];
  } else if (form.contains("必修")) {
    return Colors.green;
  } else if (form.contains("選択")) {
    return Colors.orange;
  }
  return Colors.grey;
}

Widget _cardIcon(int credit) {
  IconData icon;
  switch (credit) {
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
        (credit == -1) ? "" : credit.toString(),
        style: TextStyle(
          fontSize: 10.0,
          color: Colors.grey,
        ),
      );
  }
  return Icon(
    icon,
    color: Colors.grey,
    size: 10.0,
  );
}
