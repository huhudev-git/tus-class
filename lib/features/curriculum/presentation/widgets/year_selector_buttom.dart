import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../all_curriculum_bloc/all_curriculum_bloc.dart' as acb;
import '../curriculum_bloc/curriculum_bloc.dart' as cb;

class YearSelector extends StatefulWidget {
  final VoidCallback onMainButtomClick;

  final bool isOwner;
  final double depth;
  final double opacity;

  const YearSelector({
    Key key,
    this.isOwner,
    this.depth,
    this.opacity,
    this.onMainButtomClick,
  }) : super(key: key);

  @override
  _YearSelectorState createState() => _YearSelectorState();
}

class _YearSelectorState extends State<YearSelector> {
  //bool _isOwner = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _LeftButtom(
          isOwner: widget.isOwner,
          depth: widget.depth,
        ),
        NeumorphicButton(
          onPressed: widget.onMainButtomClick,
          padding: EdgeInsets.zero,
          style: NeumorphicStyle(
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.only()),
            depth: widget.depth,
            intensity: 0.8,
          ),
          child: Container(
            width: 105.0,
            padding: EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.black45,
                  width: 0.0,
                ),
                right: BorderSide(
                  color: Colors.black45,
                  width: 0.0,
                ),
              ),
            ),
            child: AnimatedCrossFade(
              duration: Duration(milliseconds: 500),
              crossFadeState: widget.isOwner ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              firstChild: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.person),
                  SizedBox(width: 5.0),
                  BlocBuilder<cb.CurriculumBloc, cb.CurriculumState>(
                    buildWhen: (previous, current) {
                      if (current is cb.Loaded) {
                        return true;
                      }
                      return false;
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => Container(),
                        initial: (_) => Text(
                          DateTime.now().year.toString(),
                          style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontSize: 24),
                        ),
                        loaded: (state) => Text(
                          state.timeTable.year.toString(),
                          style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontSize: 24),
                        ),
                      );
                    },
                  ),
                ],
              ),
              secondChild: Row(
                children: <Widget>[
                  Icon(Icons.supervised_user_circle),
                  SizedBox(width: 5.0),
                  BlocBuilder<acb.AllCurriculumBloc, acb.AllCurriculumState>(
                    buildWhen: (previous, current) {
                      if (current is acb.Loaded) {
                        return true;
                      }
                      return false;
                    },
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => Container(),
                        initial: (_) => Text(
                          DateTime.now().year.toString(),
                          style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontSize: 24),
                        ),
                        loaded: (state) => Text(
                          state.timeTable.year.toString(),
                          style: Theme.of(context).primaryTextTheme.headline6.copyWith(fontSize: 24),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
        _RightButtom(
          isOwner: widget.isOwner,
          depth: widget.depth,
        ),
      ],
    );
  }
}

class _LeftButtom extends StatelessWidget {
  final bool isOwner;
  final double depth;

  const _LeftButtom({Key key, this.isOwner, this.depth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: isOwner
          ? () {
              context.read<cb.CurriculumBloc>().state.maybeMap(
                    orElse: () {},
                    loaded: (state) {
                      context.read<cb.CurriculumBloc>().add(
                            cb.CurriculumEvent.fetchCurriculum(
                              isRefresh: false,
                              year: state.timeTable.year - 1,
                              semesterValue: state.timeTable.semesters.firstWhere((e) => e.value == state.timeTable.semesterValue).value,
                            ),
                          );
                    },
                  );
            }
          : () {},
      padding: EdgeInsets.zero,
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.only(topLeft: Radius.circular(10.0), bottomLeft: Radius.circular(10.0)),
        ),
        depth: depth,
        intensity: 0.8,
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          child: Icon(
            Icons.keyboard_arrow_left,
            color: isOwner ? Theme.of(context).accentColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}

class _RightButtom extends StatelessWidget {
  final bool isOwner;
  final double depth;

  const _RightButtom({Key key, this.isOwner, this.depth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      onPressed: isOwner
          ? () {
              context.read<cb.CurriculumBloc>().state.maybeMap(
                    orElse: () {},
                    loaded: (state) {
                      context.read<cb.CurriculumBloc>().add(
                            cb.CurriculumEvent.fetchCurriculum(
                              isRefresh: false,
                              year: state.timeTable.year + 1,
                              semesterValue: state.timeTable.semesters.firstWhere((e) => e.value == state.timeTable.semesterValue).value,
                            ),
                          );
                    },
                  );
            }
          : () {},
      padding: EdgeInsets.zero,
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(
          BorderRadius.only(topRight: Radius.circular(10.0), bottomRight: Radius.circular(10.0)),
        ),
        depth: depth,
        intensity: 0.8,
      ),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 4.0),
          child: Icon(
            Icons.keyboard_arrow_right,
            color: isOwner ? Theme.of(context).accentColor : Colors.grey,
          ),
        ),
      ),
    );
  }
}
