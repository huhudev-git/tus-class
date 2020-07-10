import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../core/utils/int_to_youbi.dart';
import '../../../../design-system/components/components.dart';
import '../../../../lang/localizations.dart';
import '../../domain/entities/syllabus.dart';
import '../syllabus_search_bloc/syllabus_search_bloc.dart' as ssb;
import 'syllabus_detail_page.dart';

class SyllabusSearchLoadedPage extends StatefulWidget {
  final List<Syllabus> syllabusList;
  final bool isLastPage;
  final bool isLoading;
  final int page;

  const SyllabusSearchLoadedPage({Key key, this.syllabusList, this.isLastPage, this.isLoading, this.page}) : super(key: key);

  @override
  _SyllabusSearchLoadedPageState createState() => _SyllabusSearchLoadedPageState();
}

class _SyllabusSearchLoadedPageState extends State<SyllabusSearchLoadedPage> {
  final ScrollController _scrollController = ScrollController();
  List<Syllabus> get syllabusList => widget.syllabusList;
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
          itemCount: syllabusList.length + 1,
          itemBuilder: (context, index) {
            if (index >= syllabusList.length) {
              return LoaderListItem(
                isLastPage: isLastPage,
                isLoading: isLoading,
              );
            } else {
              return SyllabusListTile(
                key: Key("syllabus_$index"),
                syllabus: syllabusList[index],
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

      BlocProvider.of<ssb.SyllabusSearchBloc>(context).add(
        ssb.SyllabusSearchEvent.fetchPage(page: page + 1),
      );
    }
    return false;
  }
}

class SyllabusListTile extends StatelessWidget {
  final Syllabus syllabus;
  final int index;

  const SyllabusListTile({Key key, this.syllabus, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Neumorphic(
        style: NeumorphicStyle(
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10.0)),
          depth: 1.5,
        ),
        child: ListTile(
          leading: Container(
            padding: EdgeInsets.only(right: 10.0),
            decoration: BoxDecoration(
              border: Border(
                right: BorderSide(
                  color: Colors.black12,
                ),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  '${syllabus.year}・${syllabus.semester}',
                  style: TextStyle(color: Colors.indigo[900]),
                ),
                Text(
                  syllabus.type,
                  style: TextStyle(
                    color: syllabus.type == '週間授業' ? Colors.blue : Colors.orange,
                  ),
                ),
              ],
            ),
          ),
          title: Row(
            children: <Widget>[
              Expanded(
                child: Text(
                  syllabus.course,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).primaryTextTheme.subtitle1,
                ),
              ),
              Text(
                _dayperiods(syllabus, context),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 0.8,
                style: Theme.of(context).primaryTextTheme.subtitle1.copyWith(color: Colors.black45),
              ),
            ],
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                syllabus.teacher,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).primaryTextTheme.subtitle2.copyWith(color: Colors.black45),
              ),
              Text(
                syllabus.subject,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textScaleFactor: 0.8,
                style: Theme.of(context).primaryTextTheme.subtitle1.copyWith(color: Colors.black45),
              ),
            ],
          ),
          onTap: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => SyllabusDetailPage(syllabus: syllabus, index: index),
            ),
          ),
        ),
      ),
    );
  }

  String _dayperiods(Syllabus item, BuildContext context) {
    String r = '';
    if (syllabus.day != null) {
      r += int2Youbi(syllabus.day);
    }
    if (syllabus.periods.isNotEmpty) {
      r += '・${syllabus.periods.join(' ')}${AppLocalizations.of(context).translate('UNIT_PERIOD')}';
    }
    return r;
  }
}
