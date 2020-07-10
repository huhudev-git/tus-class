import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tus_class/lang/localizations.dart';

class LoaderListItem extends StatelessWidget {
  final bool isLastPage;
  final bool isLoading;

  const LoaderListItem({Key key, this.isLastPage, this.isLoading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isLastPage) {
      return ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/illustration/user-experience/036-usability.svg',
              height: 25.0,
            ),
            SizedBox(width: 15.0),
            Text(AppLocalizations.of(context).translate('LABEL_REACH_END')),
          ],
        ),
      );
    }
    return AnimatedCrossFade(
      duration: Duration(milliseconds: 300),
      crossFadeState: isLoading ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      firstChild: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 10.0),
            SvgPicture.asset(
              'assets/illustration/space/space-ship.svg',
              height: 25.0,
            ),
            SizedBox(width: 15.0),
            Text(AppLocalizations.of(context).translate('LABEL_LOADING')),
            SizedBox(width: 15.0),
            SizedBox(
              width: 15.0,
              height: 15.0,
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
              ),
            ),
          ],
        ),
      ),
      secondChild: ListTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              'assets/illustration/space/space-ship-3.svg',
              semanticsLabel: 'Load',
              height: 25.0,
            ),
            SizedBox(width: 15.0),
            Icon(Icons.arrow_upward),
            SizedBox(width: 10.0),
            Text(AppLocalizations.of(context).translate('LABEL_TO_LOAD')),
          ],
        ),
      ),
    );
  }
}
