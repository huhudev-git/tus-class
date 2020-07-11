import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';
import '../curriculum_bloc/curriculum_bloc.dart' as cb;
import 'refreash_buttom.dart';
import 'semester_buttom.dart';
import 'year_selector_buttom.dart';

class SwitchSemesterWidget extends StatefulWidget {
  final VoidCallback onMainButtomClick;
  final bool isOwner;

  const SwitchSemesterWidget({
    Key key,
    this.onMainButtomClick,
    this.isOwner,
  }) : super(key: key);

  @override
  _SwitchSemesterWidgetState createState() => _SwitchSemesterWidgetState();
}

class _SwitchSemesterWidgetState extends State<SwitchSemesterWidget> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animetion;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 500));
    _animetion = Tween(begin: -1.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Stack(
          children: [
            if (_animetion.value >= 0)
              BlocBuilder<cb.CurriculumBloc, cb.CurriculumState>(
                buildWhen: (previous, current) {
                  if (current is cb.Loaded) {
                    return true;
                  }
                  return false;
                },
                builder: (context, state) {
                  final List<Widget> semesterButtoms = state.map(
                    initial: (_) => [],
                    loading: (_) => [],
                    failed: (_) => [
                      SemesterButtom(
                        opacity: _animetion.value > 0 ? _animetion.value : 0,
                        depth: _animetion.value > 0 ? _animetion.value * 3 : 0,
                        text: AppLocalizations.of(context).translate('LABEL_UNAVAILABLE'),
                      ),
                      SizedBox(width: 15.0),
                    ],
                    loaded: (state) {
                      final List<Widget> result = [];
                      for (final semester in state.timeTable.semesters) {
                        if (semester.value == state.timeTable.semesterValue) {
                          result.add(
                            SemesterButtom(
                              opacity: _animetion.value > 0 ? _animetion.value : 0,
                              depth: _animetion.value > 0 ? _animetion.value * -3 : 0,
                              text: semester.name,
                              onClick: () {},
                            ),
                          );
                        } else {
                          result.add(
                            SemesterButtom(
                              opacity: _animetion.value > 0 ? _animetion.value : 0,
                              depth: _animetion.value > 0 ? _animetion.value * 3 : 0,
                              text: semester.name,
                              onClick: () => context.bloc<cb.CurriculumBloc>().add(
                                    cb.CurriculumEvent.fetchCurriculum(
                                      year: state.timeTable.year,
                                      semesterValue: semester.value,
                                      isRefresh: false,
                                    ),
                                  ),
                            ),
                          );
                        }
                        result.add(SizedBox(width: 15.0));
                      }
                      return result;
                    },
                  );

                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                      height: 40.0,
                      child: Row(
                        children: semesterButtoms,
                      ),
                    ),
                  );
                },
              ),
            if (_animetion.value < 0)
              Opacity(
                opacity: _animetion.value < 0 ? -_animetion.value : 0,
                child: Container(
                  height: 40.0,
                  margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: YearSelector(
                    isOwner: widget.isOwner,
                    onMainButtomClick: widget.onMainButtomClick,
                    depth: _animetion.value < 0 ? -_animetion.value * 3 : 0,
                  ),
                ),
              ),
          ],
        ),
        Spacer(),
        if (widget.isOwner)
          SizedBox(
            width: 30.0,
            height: 30.0,
            child: NeumorphicButton(
              padding: EdgeInsets.all(0.0),
              style: NeumorphicStyle(
                boxShape: NeumorphicBoxShape.circle(),
                intensity: 0.8,
              ),
              onPressed: () {
                switch (_controller.status) {
                  case AnimationStatus.completed:
                    _controller.reverse();
                    break;
                  case AnimationStatus.dismissed:
                    _controller.forward();
                    break;
                  default:
                }
              },
              child: Icon(Icons.add),
            ),
          ),
        SizedBox(width: 15.0),
        RefreshButtom(isOwner: widget.isOwner),
      ],
    );
  }
}
