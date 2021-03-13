import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../core/utils/int_to_youbi.dart';
import '../../../../design-system/components/components.dart';
import '../../../../lang/localizations.dart';
import '../../domain/entities/grade.dart';
import '../grade_search_bloc/grade_search_bloc.dart' as gsb;
import 'grade_detail_page.dart';

class GradeSearchLoadedPage extends StatefulWidget {
  final List<Grade> grades;
  final bool isLastPage;
  final bool isLoading;
  final int page;

  const GradeSearchLoadedPage({Key key, this.grades, this.isLastPage, this.isLoading, this.page}) : super(key: key);

  @override
  _GradeSearchLoadedPageState createState() => _GradeSearchLoadedPageState();
}

class _GradeSearchLoadedPageState extends State<GradeSearchLoadedPage> {
  final ScrollController _scrollController = ScrollController();
  List<Grade> get grades => widget.grades;
  bool get isLastPage => widget.isLastPage;
  bool get isLoading => widget.isLoading;
  int get page => widget.page;

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: _handleScrollNotification,
      child: Scrollbar(
        child: ListView.builder(
          physics: AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
          itemCount: grades.length + 1,
          itemBuilder: (context, index) {
            if (index >= grades.length) {
              return LoaderListItem(
                isLastPage: isLastPage,
                isLoading: isLoading,
              );
            } else {
              return GradeListTile(
                key: Key("grade_$index"),
                grade: grades[index],
                index: index,
              );
            }
          },
        ),
      ),
    );
  }

  bool _handleScrollNotification(ScrollNotification notification) {
    // not enough items | android | iOS doesn't overscroll,
    if (notification is ScrollEndNotification && _scrollController.position.extentAfter == 0 && notification.metrics.pixels == notification.metrics.maxScrollExtent) {
      if (isLastPage || isLoading) {
        return false;
      }

      BlocProvider.of<gsb.GradeSearchBloc>(context).add(
        gsb.GradeSearchEvent.fetchPage(page: page + 1),
      );
    }
    return false;
  }
}

class GradeListTile extends StatefulWidget {
  final Grade grade;
  final int index;
  const GradeListTile({Key key, this.grade, this.index}) : super(key: key);

  @override
  _GradeListTileState createState() => _GradeListTileState();
}

class _GradeListTileState extends State<GradeListTile> {
  bool _crossFadeState = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(5.0)),
        ),
        child: GestureDetector(
          onTap: () => widget.grade.hasDetail
              ? Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (_) => GradeDetailPage(grade: widget.grade),
                  ),
                )
              : _noDetail(),
          child: Container(
            height: 150.0,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ListTile(
                        title: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Text(
                            widget.grade.course,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 17.0),
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                widget.grade.subject,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textScaleFactor: 0.8,
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Colors.black54,
                                    ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                widget.grade.teacher,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textScaleFactor: 0.8,
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Colors.black54,
                                    ),
                              ),
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Text(
                                '${widget.grade.year}・${widget.grade.semester}${_leftTop(widget.grade)}',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textScaleFactor: 0.8,
                                style: Theme.of(context).textTheme.subtitle1.copyWith(
                                      color: Colors.black54,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsets.only(left: 15.0, bottom: 15.0, top: 10.0),
                          child: Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 5.0),
                                height: 20.0,
                                width: 30.0,
                                child: ColorCard(
                                  firstChild: Center(
                                    child: Text(
                                      '${(widget.grade.people * (widget.grade.s / 100)).round()}',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  secondChild: Center(
                                    child: Text(
                                      'S',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  firstColor: Colors.blue,
                                  secondColor: Colors.blueAccent,
                                  shadowColor: Colors.blue[300],
                                  crossFadeState: _crossFadeState,
                                  onTap: _onTap,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5.0),
                                height: 20.0,
                                width: 30.0,
                                child: ColorCard(
                                  firstChild: Center(
                                    child: Text(
                                      '${(widget.grade.people * (widget.grade.a / 100)).round()}',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  secondChild: Center(
                                    child: Text(
                                      'A',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  firstColor: Colors.greenAccent[400],
                                  secondColor: Colors.green,
                                  shadowColor: Colors.green[300],
                                  crossFadeState: _crossFadeState,
                                  onTap: _onTap,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5.0),
                                height: 20.0,
                                width: 30.0,
                                child: ColorCard(
                                  firstChild: Center(
                                    child: Text(
                                      '${(widget.grade.people * (widget.grade.b / 100)).round()}',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  secondChild: Center(
                                    child: Text(
                                      'B',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  firstColor: Colors.orangeAccent[200],
                                  secondColor: Colors.orange,
                                  shadowColor: Colors.orange[300],
                                  crossFadeState: _crossFadeState,
                                  onTap: _onTap,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5.0),
                                height: 20.0,
                                width: 30.0,
                                child: ColorCard(
                                  firstChild: Center(
                                    child: Text(
                                      '${(widget.grade.people * (widget.grade.c / 100)).round()}',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  secondChild: Center(
                                    child: Text(
                                      'C',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  firstColor: Colors.purpleAccent,
                                  secondColor: Colors.purple,
                                  shadowColor: Colors.purple[300],
                                  crossFadeState: _crossFadeState,
                                  onTap: _onTap,
                                ),
                              ),
                              Container(
                                height: 20.0,
                                width: 30.0,
                                child: ColorCard(
                                  firstChild: Center(
                                    child: Text(
                                      '${(widget.grade.people * (widget.grade.d / 100)).round()}',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  secondChild: Center(
                                    child: Text(
                                      'D',
                                      maxLines: 1,
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  firstColor: Colors.red,
                                  secondColor: Colors.redAccent,
                                  shadowColor: Colors.red[300],
                                  crossFadeState: _crossFadeState,
                                  onTap: _onTap,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20.0),
                  child: SizedBox(
                    height: 130.0,
                    width: 130.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(14.0),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                            ),
                            child: Container(),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(19.3),
                          child: Neumorphic(
                            style: NeumorphicStyle(
                              boxShape: NeumorphicBoxShape.circle(),
                              depth: -3,
                            ),
                            child: Container(),
                          ),
                        ),
                        DonutPieChart(
                          _createData(widget.grade.s, widget.grade.a, widget.grade.b, widget.grade.c, widget.grade.d),
                          animate: false,
                        ),
                        Container(
                          padding: EdgeInsets.all(50.0),
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
                        Center(
                          child: Text(
                            '${widget.grade.people}',
                            style: TextStyle(
                              color: Colors.black45,
                              fontSize: 17.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _leftTop(Grade item) {
    String r = '';
    if (item.day != null) {
      r += '・${int2Youbi(item.day)}';
    }
    if (item.periods.isNotEmpty) {
      r += '・${item.periods.join(' ')}${AppLocalizations.of(context).translate('UNIT_PERIOD')}';
    }
    return r;
  }

  void _onTap() {
    setState(() {
      _crossFadeState = !_crossFadeState;
    });
  }

  List<charts.Series<LinearGrades, dynamic>> _createData(double s, double a, double b, double c, double d) {
    return [
      charts.Series<LinearGrades, dynamic>(
        id: 'Grade',
        colorFn: (LinearGrades grade, _) => grade.color,
        domainFn: (LinearGrades grade, _) => grade.evaluation,
        measureFn: (LinearGrades grade, _) => grade.length,
        data: [
          LinearGrades('S', s, charts.Color.fromHex(code: '#60ACFC')),
          LinearGrades('A', a, charts.Color.fromHex(code: '#5bc49f')),
          LinearGrades('B', b, charts.Color.fromHex(code: '#feb64d')),
          LinearGrades('C', c, charts.Color.fromHex(code: '#9287e7')),
          LinearGrades('D', d, charts.Color.fromHex(code: '#ff7c7c')),
        ],
      )
    ];
  }

  void _noDetail() {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('${widget.grade.course} - ${AppLocalizations.of(context).translate('BAR_NO_DETAIL')}'),
              Icon(Icons.error_outline),
            ],
          ),
          backgroundColor: Colors.blue,
        ),
      );
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
        arcWidth: 50,
        strokeWidthPx: 0.0,
      ),
    );
  }
}

class LinearGrades {
  final double length;
  final String evaluation;
  final charts.Color color;

  LinearGrades(this.evaluation, this.length, this.color);
}

class ColorCard extends StatelessWidget {
  final Widget firstChild;
  final Widget secondChild;

  final Color firstColor;
  final Color secondColor;
  final Color shadowColor;

  final VoidCallback onTap;
  final bool crossFadeState;

  const ColorCard({
    Key key,
    this.firstChild,
    this.secondChild,
    this.firstColor,
    this.secondColor,
    this.shadowColor,
    this.crossFadeState,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        gradient: LinearGradient(
          colors: [
            secondColor,
            firstColor,
          ],
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 0.0),
            color: shadowColor,
            blurRadius: 3.0,
          )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: firstColor,
          highlightColor: firstColor,
          borderRadius: BorderRadius.circular(5.0),
          onTap: onTap,
          child: AnimatedCrossFade(
            duration: Duration(milliseconds: 500),
            crossFadeState: crossFadeState ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            firstChild: firstChild,
            secondChild: secondChild,
            layoutBuilder: (Widget topChild, Key topChildKey, Widget bottomChild, Key bottomChildKey) {
              return Stack(
                children: <Widget>[
                  Positioned(
                    key: bottomChildKey,
                    child: bottomChild,
                  ),
                  Positioned(
                    key: topChildKey,
                    child: topChild,
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
