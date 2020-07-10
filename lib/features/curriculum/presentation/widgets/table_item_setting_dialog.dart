import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';
import '../../domain/entities/curriculum.dart';
import '../../domain/entities/curriculum_detail.dart';
import '../../domain/entities/curriculum_setting.dart';
import '../curriculum_setting_bloc/curriculum_setting_bloc.dart';

class TableItemSettingDialog extends StatefulWidget {
  final CurriculumDetail detail;
  final Curriculum curriculum;
  final CurriculumSetting setting;
  final CurriculumSettingBloc bloc;

  const TableItemSettingDialog({this.detail, this.curriculum, this.setting, this.bloc});

  @override
  _TableItemSettingDialogState createState() => _TableItemSettingDialogState();
}

class _TableItemSettingDialogState extends State<TableItemSettingDialog> {
  int _form;
  RangeValues _range = RangeValues(1, 4);

  String get sroom => widget.setting?.room;
  String get sdepartment => widget.setting?.department ?? widget.detail?.department;
  String get scategory => widget.setting?.category ?? widget.detail?.category;
  String get ssubject => widget.setting?.subject ?? widget.detail?.subject;

  String _room;
  String _department;
  String _category;
  String _subject;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _roomController;
  TextEditingController _departmentController;
  TextEditingController _subjectController;
  TextEditingController _categoryController;

  @override
  void initState() {
    super.initState();
    final yearRange = widget.setting?.grade?.split('～') ?? widget.detail?.grade?.split('～') ?? ['1', '4'];

    if (yearRange.length == 1) {
      if (yearRange[0] != '') {
        _range = RangeValues(0, double.tryParse(yearRange[0]) ?? 4.0);
      }
    } else if (yearRange.length == 2) {
      _range = RangeValues(
        double.tryParse(yearRange[0]) ?? 0.0,
        double.tryParse(yearRange[0]) ?? double.tryParse(yearRange[1]) ?? 4.0,
      );
    }

    _roomController = TextEditingController()..text = sroom;
    _departmentController = TextEditingController()..text = sdepartment;
    _subjectController = TextEditingController()..text = ssubject;
    _categoryController = TextEditingController()..text = scategory;

    final form = widget.setting?.form ?? widget.detail?.form;
    if (form != null) {
      if (form.contains("選択必修") || form.contains("選必")) {
        _form = 3;
      } else if (form.contains("必修")) {
        _form = 1;
      } else if (form.contains("選択")) {
        _form = 2;
      }
    }
  }

  @override
  void dispose() {
    _roomController.dispose();
    _departmentController.dispose();
    _subjectController.dispose();
    _categoryController.dispose();
    super.dispose();
  }

  String get range {
    if (_range.start == 0) {
      return "${_range.end.toInt()} ${AppLocalizations.of(context).translate('UNIT_YEAR')}";
    } else if (_range.start == _range.end) {
      return "${_range.end.toInt()} ${AppLocalizations.of(context).translate('UNIT_YEAR')}";
    } else {
      return "${_range.start.toInt()} ${AppLocalizations.of(context).translate('UNIT_YEAR')} ～ ${_range.end.toInt()} ${AppLocalizations.of(context).translate('UNIT_YEAR')}";
    }
  }

  String get form {
    switch (_form) {
      case 1:
        return "必修";
        break;
      case 2:
        return "選択";
        break;
      case 3:
        return "選択必修";
        break;
      default:
        return '';
    }
  }

  String get grade {
    if (_range.start == 0) {
      return "${_range.end.toInt()}";
    } else if (_range.start == _range.end) {
      return "${_range.end.toInt()}";
    } else {
      return "${_range.start.toInt()}～${_range.end.toInt()}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              AppLocalizations.of(context).translate('TITLE_CURRICULUM_SETTING'),
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
            Text(
              AppLocalizations.of(context).translate('MESSAGE_SYLLABUS_MAY_WRONY'),
              style: Theme.of(context).primaryTextTheme.subtitle2.copyWith(fontSize: 12),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: NeumorphicTheme(
              theme: NeumorphicTheme.currentTheme(context).copyWith(depth: -1.5),
              child: ListBody(
                children: <Widget>[
                  Neumorphic(
                    padding: EdgeInsets.zero,
                    child: TextFormField(
                      controller: _roomController,
                      onSaved: (val) => _room = val,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).translate('LABEL_ROOM'),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Neumorphic(
                    padding: EdgeInsets.zero,
                    child: TextFormField(
                      controller: _departmentController,
                      onSaved: (val) => _department = val,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).translate('LABEL_DEPARTMENT'),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Neumorphic(
                    padding: EdgeInsets.zero,
                    child: TextFormField(
                      controller: _subjectController,
                      onSaved: (val) => _subject = val,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).translate('LABEL_CATEGORY'),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Neumorphic(
                    padding: EdgeInsets.zero,
                    child: TextFormField(
                      controller: _categoryController,
                      onSaved: (val) => _category = val,
                      decoration: InputDecoration(
                        hintText: AppLocalizations.of(context).translate('LABEL_SUBJECT'),
                        contentPadding: EdgeInsetsDirectional.fromSTEB(14.0, 0.0, 0.0, 0.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(3.0)),
                          shape: NeumorphicShape.convex,
                          unselectedDepth: 1.5,
                          selectedDepth: -1.5,
                        ),
                        groupValue: _form,
                        value: 1,
                        onChanged: (int value) {
                          setState(() {
                            _form = value;
                          });
                        },
                        padding: EdgeInsets.all(8.0),
                        child: Text(AppLocalizations.of(context).translate('LABEL_COMPULSORY')),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(3.0)),
                          shape: NeumorphicShape.convex,
                          unselectedDepth: 1.5,
                          selectedDepth: -1.5,
                        ),
                        groupValue: _form,
                        value: 2,
                        onChanged: (int value) {
                          setState(() {
                            _form = value;
                          });
                        },
                        padding: EdgeInsets.all(8.0),
                        child: Text(AppLocalizations.of(context).translate('LABEL_ELECTIVE')),
                      ),
                      NeumorphicRadio(
                        style: NeumorphicRadioStyle(
                          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(3.0)),
                          shape: NeumorphicShape.convex,
                          unselectedDepth: 1.5,
                          selectedDepth: -1.5,
                        ),
                        groupValue: _form,
                        value: 3,
                        onChanged: (int value) {
                          setState(() {
                            _form = value;
                          });
                        },
                        padding: EdgeInsets.all(8.0),
                        child: Text(AppLocalizations.of(context).translate('LABEL_OPTIONAL_COMPULSORY')),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0),
                  Center(child: Text('${AppLocalizations.of(context).translate('LABEL_GRADE')}: $range')),
                  RangeSlider(
                    activeColor: Theme.of(context).accentColor,
                    values: _range,
                    max: 6,
                    divisions: 6,
                    onChanged: (range) {
                      setState(() {
                        _range = range;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        actions: <Widget>[
          NeumorphicButton(
            onPressed: () {
              _formKey.currentState.save();
              setState(() {
                widget.bloc.add(
                  CurriculumSettingEvent.saveCurriculumSetting(
                    setting: CurriculumSetting(
                      code: widget.setting?.code ?? widget.detail?.code ?? widget.curriculum?.code ?? '',
                      course: widget.setting?.course ?? widget.detail?.course ?? widget.curriculum?.course,
                      category: _category,
                      department: _department,
                      form: form,
                      grade: grade,
                      room: _room,
                      subject: _subject,
                    ),
                  ),
                );
              });
              Navigator.of(context).pop();
            },
            child: Text(
              AppLocalizations.of(context).translate('LABEL_OK'),
              style: TextStyle(color: Colors.green),
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
      ),
    );
  }
}
