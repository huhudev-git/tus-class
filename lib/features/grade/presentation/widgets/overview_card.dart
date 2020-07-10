import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/grade_utils.dart';
import '../../../../lang/localizations.dart';
import '../grade_bloc/grade_bloc.dart';
import 'color_card_widget.dart';

class OverviewCard extends StatefulWidget {
  @override
  _OverviewCardState createState() => _OverviewCardState();
}

class _OverviewCardState extends State<OverviewCard> {
  bool _crossFadeState = false;
  GradeState get state => BlocProvider.of<GradeBloc>(context).state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 17.0, right: 17.0, bottom: 17.0),
      child: Column(
        children: <Widget>[
          ListTile(
            title: Text(
              AppLocalizations.of(context).translate('TITLE_OVERVIEW'),
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Expanded(
                child: GradeColorCard(
                  firstColor: Colors.blue,
                  secondColor: Colors.blueAccent,
                  shadowColor: Colors.blue[300],
                  frontText: AppLocalizations.of(context).translate('LABEL_CREDIT'),
                  frontNumber: _getTotalCredit(),
                  backText1: AppLocalizations.of(context).translate('LABEL_MC'),
                  backNumber1: _getGPAofCompulsoryAndMajor(),
                  backText2: AppLocalizations.of(context).translate('LABEL_MB'),
                  backNumber2: _getGPAofMajorAndBase(),
                  crossFadeState: _crossFadeState,
                  onTap: _switchCard,
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: GradeColorCard(
                  firstColor: Colors.greenAccent[400],
                  secondColor: Colors.green,
                  shadowColor: Colors.green[300],
                  frontText: AppLocalizations.of(context).translate('LABEL_GPA'),
                  frontNumber: _getGPA(),
                  backText1: AppLocalizations.of(context).translate('LABEL_MAJOR_REQUIRED'),
                  backNumber1: _getGPAofMajorAndRequired(),
                  backText2: AppLocalizations.of(context).translate('LABEL_MAJOR_ELECTIVE'),
                  backNumber2: _getGPAofMajorAndElective(),
                  crossFadeState: _crossFadeState,
                  onTap: _switchCard,
                ),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Expanded(
                child: GradeColorCard(
                  firstColor: Colors.purpleAccent,
                  secondColor: Colors.purple,
                  shadowColor: Colors.purple[300],
                  frontText: AppLocalizations.of(context).translate('LABEL_GP'),
                  frontNumber: _getTotalGP(),
                  backText1: AppLocalizations.of(context).translate('LABEL_ENGLISH'),
                  backNumber1: _getGPAofEnglish(),
                  backText2: AppLocalizations.of(context).translate('LABEL_OTHERS'),
                  backNumber2: _getGPAofOthers(),
                  crossFadeState: _crossFadeState,
                  onTap: _switchCard,
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: GradeColorCard(
                  firstColor: Colors.orangeAccent[200],
                  secondColor: Colors.orange,
                  shadowColor: Colors.orange[300],
                  frontText: AppLocalizations.of(context).translate('LABEL_G'),
                  frontNumber: _getTotalG(),
                  backText1: AppLocalizations.of(context).translate('LABEL_GENERAL'),
                  backNumber1: _getGPAofGeneral(),
                  backText2: AppLocalizations.of(context).translate('LABEL_BASE_KEY'),
                  backNumber2: _getGPAofBaseAndKey(),
                  crossFadeState: _crossFadeState,
                  onTap: _switchCard,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _switchCard() {
    setState(() {
      _crossFadeState = !_crossFadeState;
    });
  }

  double _getTotalCredit({bool isPassed = true}) {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (isPassed) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          } else {
            credit += item.credit;
          }
        }
        return credit;
      },
    );
  }

  double _getTotalGP() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double gp = 0;
        for (final item in state.grades) {
          if (isCoursePassed(item)) {
            gp += item.gp;
          }
        }
        return gp;
      },
    );
  }

  double _getTotalG() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double g = 0;
        for (final item in state.grades) {
          if (isCoursePassed(item)) {
            g += item.g;
          }
        }
        return g;
      },
    );
  }

  double _getGPA() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        final creadit = _getTotalCredit();
        if (creadit == 0) {
          return 0.0;
        }
        return _getTotalGP() / _getTotalCredit(isPassed: false);
      },
    );
  }

  double _getGPAofGeneral() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('一般教養') && !(item.category.contains('英語') && item.category.contains('必修'))) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofEnglish() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('英語') && item.category.contains('必修')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofBaseAndKey() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('基礎') && item.category.contains('基幹')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofMajorAndBase() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('専門') && item.category.contains('基礎')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofCompulsoryAndMajor() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('専門') && item.category.contains('必修')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofMajorAndRequired() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('専門') && item.category.contains('選択必修')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofMajorAndElective() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('専門') && item.category.contains('選択')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }

  double _getGPAofOthers() {
    return state.maybeMap(
      orElse: () => 0,
      loaded: (state) {
        double credit = 0;
        for (final item in state.grades) {
          if (item.category.contains('他学部科')) {
            if (isCoursePassed(item)) {
              credit += item.credit;
            }
          }
        }
        return credit;
      },
    );
  }
}
