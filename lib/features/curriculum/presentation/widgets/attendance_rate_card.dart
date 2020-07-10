import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../design-system/components/components.dart';
import '../../../../lang/localizations.dart';
import '../../domain/entities/attendance_rate.dart';
import '../attendance_rate_bloc/attendance_rate_bloc.dart';

enum SortMode {
  ascending,
  descending,
  normal,
}

class AttendanceRateCard extends StatefulWidget {
  @override
  _AttendanceRateCardState createState() => _AttendanceRateCardState();
}

class _AttendanceRateCardState extends State<AttendanceRateCard> with AutomaticKeepAliveClientMixin {
  SortMode _mode = SortMode.normal;

  List<AttendanceRate> _sortRates(List<AttendanceRate> rates) {
    rates.removeWhere((e) => e.rate == -1);

    switch (_mode) {
      case SortMode.ascending:
        rates.sort((b, c) => b.rate - c.rate);
        break;
      case SortMode.descending:
        rates.sort((b, c) => c.rate - b.rate);
        break;
      default:
        break;
    }

    return rates;
  }

  @override
  void initState() {
    super.initState();
    context.bloc<AttendanceRateBloc>().add(AttendanceRateEvent.fetchAttendanceRate());
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return AspectRatio(
      aspectRatio: 1.62,
      child: Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
        ),
        child: BlocBuilder<AttendanceRateBloc, AttendanceRateState>(
          builder: (context, state) {
            return state.map(
              initial: (_) => _emptyCard(),
              loading: (_) => _emptyCard(),
              failed: (state) => CardFailureWidget(
                error: state.error,
                retry: () => context.bloc<AttendanceRateBloc>().add(AttendanceRateEvent.fetchAttendanceRate()),
              ),
              loaded: (state) {
                if (state.rates.isEmpty) {
                  return _emptyCard();
                }
                final rates = _sortRates(state.rates);

                return _card(
                  child: ListView.builder(
                    padding: EdgeInsets.only(bottom: 10.0, left: 10.0, right: 10.0),
                    itemCount: rates.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return AspectRatio(
                        aspectRatio: 1 / 1.62,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Neumorphic(
                                style: NeumorphicStyle(
                                  boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                                  depth: 10,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 100 - rates[index].rate,
                                      child: Container(
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).backgroundColor,
                                          borderRadius: rates[index].rate != 0 ? BorderRadius.vertical(top: Radius.circular(15.0)) : BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: rates[index].rate,
                                      child: Container(
                                        width: 7.0,
                                        decoration: BoxDecoration(
                                          color: Theme.of(context).accentColor,
                                          borderRadius: rates[index].rate != 100 ? BorderRadius.vertical(bottom: Radius.circular(15.0)) : BorderRadius.circular(15.0),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              rates[index].course,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).primaryTextTheme.subtitle2,
                              textScaleFactor: 0.5,
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  length: rates.length.toString(),
                  average: '${getAverage(rates).toStringAsFixed(2)}%',
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _emptyCard() {
    return _card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            'assets/illustration/space/lunar-module.svg',
            semanticsLabel: 'NO RESULT',
            height: 30.0,
          ),
          SizedBox(width: 10.0),
          Text(
            AppLocalizations.of(context).translate('LABEL_NO_DATA'),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.black45,
            ),
          ),
        ],
      ),
      length: '-',
      average: '-',
    );
  }

  Widget _card({Widget child, String average, String length}) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Column(
            children: <Widget>[
              ListTile(
                dense: true,
                title: Text(
                  AppLocalizations.of(context).translate('TITLE_ATTENDANCE_RATE'),
                  style: Theme.of(context).primaryTextTheme.headline5,
                ),
                trailing: PopupMenuButton<SortMode>(
                  itemBuilder: (BuildContext context) => <PopupMenuItem<SortMode>>[
                    PopupMenuItem<SortMode>(value: SortMode.descending, child: Text(AppLocalizations.of(context).translate('LABEL_DESC'))),
                    PopupMenuItem<SortMode>(value: SortMode.ascending, child: Text(AppLocalizations.of(context).translate('LABEL_ASC'))),
                    PopupMenuItem<SortMode>(value: SortMode.normal, child: Text(AppLocalizations.of(context).translate('LABEL_NORMAL'))),
                  ],
                  onSelected: (mode) => setState(() {
                    _mode = mode;
                  }),
                  child: Neumorphic(
                    style: NeumorphicStyle(
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
                    ),
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Theme.of(context).accentColor,
                      size: 30.0,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Expanded(
                child: child,
              ),
              Divider(height: 0.0),
            ],
          ),
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  SizedBox(width: 20.0),
                  Text(
                    '${AppLocalizations.of(context).translate('LABEL_AVERAGE')}:',
                    style: Theme.of(context).primaryTextTheme.headline6.copyWith(
                          color: Theme.of(context).accentColor,
                        ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    average,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20.0,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${AppLocalizations.of(context).translate('LABEL_TOTAL')}:',
                    style: Theme.of(context).primaryTextTheme.headline6.copyWith(
                          color: Theme.of(context).accentColor,
                        ),
                  ),
                  SizedBox(width: 10.0),
                  Text(
                    length,
                    style: TextStyle(
                      color: Colors.black45,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(width: 25.0),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  double getAverage(List<AttendanceRate> rates) {
    if (rates.isEmpty) {
      return 0.0;
    }
    double average = 0.0;
    for (final rate in rates) {
      average += rate.rate;
    }
    return average / rates.length;
  }

  @override
  bool get wantKeepAlive => true;
}
