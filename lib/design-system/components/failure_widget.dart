import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../core/errors/failures.dart';
import '../../features/auth/presentation/pages/auth_page.dart';
import '../../lang/localizations.dart';

class FailureWidget extends StatelessWidget {
  final VoidCallback retry;
  final Failure error;
  final double scale;
  const FailureWidget({Key key, this.retry, this.error, this.scale = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              error.img,
              height: 100.0 * scale,
            ),
            SizedBox(height: 30.0 * scale),
            Text(
              error.getTitle(context),
              textScaleFactor: scale,
              style: Theme.of(context).primaryTextTheme.headline4,
            ),
            SizedBox(height: 5.0),
            Text(
              error.getMessage(context),
              textAlign: TextAlign.center,
              textScaleFactor: scale,
              style: Theme.of(context).primaryTextTheme.headline6,
            ),
            SizedBox(height: 30.0),
            NeumorphicButton(
              padding: EdgeInsets.symmetric(
                horizontal: 50.0 * scale,
                vertical: 12.0 * scale,
              ),
              onPressed: () {
                switch (error.runtimeType) {
                  case TUSNULLPageIdFailure:
                  case TUSSessionOutFailure:
                    Navigator.pushAndRemoveUntil(
                      context,
                      ScaleRoute(widget: AuthPage()),
                      (Route<dynamic> route) => false,
                    );
                    break;
                  default:
                    retry();
                }
              },
              child: Text(
                _buttomText(context),
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _buttomText(BuildContext context) {
    switch (error.runtimeType) {
      case TUSNULLPageIdFailure:
      case TUSSessionOutFailure:
        return AppLocalizations.of(context).translate('LABEL_RELOGIN');
      default:
        return AppLocalizations.of(context).translate('LABEL_RETRY');
    }
  }
}

class CardFailureWidget extends StatelessWidget {
  final VoidCallback retry;
  final Failure error;
  final double scale;
  const CardFailureWidget({Key key, this.retry, this.error, this.scale = 1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1.62,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                error.img,
                height: 50.0 * scale,
              ),
              SizedBox(height: 10.0 * scale),
              Text(
                error.getTitle(context),
                textScaleFactor: scale,
                style: Theme.of(context).primaryTextTheme.headline6,
              ),
              SizedBox(height: 5.0),
              Text(
                error.getMessage(context),
                textAlign: TextAlign.center,
                textScaleFactor: scale,
                style: Theme.of(context).primaryTextTheme.subtitle2,
              ),
              SizedBox(height: 15.0),
              NeumorphicButton(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0 * scale,
                  vertical: 5.0 * scale,
                ),
                onPressed: () {
                  switch (error.runtimeType) {
                    case TUSNULLPageIdFailure:
                    case TUSSessionOutFailure:
                      Navigator.pushAndRemoveUntil(
                        context,
                        ScaleRoute(widget: AuthPage()),
                        (Route<dynamic> route) => false,
                      );
                      break;
                    default:
                      retry();
                  }
                },
                child: Text(
                  _buttomText(context),
                  style: Theme.of(context).primaryTextTheme.bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _buttomText(BuildContext context) {
    switch (error.runtimeType) {
      case TUSNULLPageIdFailure:
        return AppLocalizations.of(context).translate('LABEL_RELOGIN');
      case TUSSessionOutFailure:
        return AppLocalizations.of(context).translate('LABEL_RELOGIN');
      default:
        return AppLocalizations.of(context).translate('LABEL_RETRY');
    }
  }
}

class ScaleRoute extends PageRouteBuilder {
  final Widget widget;
  ScaleRoute({this.widget})
      : super(
          pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
            return widget;
          },
          transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
            return ScaleTransition(
              scale: Tween<double>(
                begin: 0.0,
                end: 1.0,
              ).animate(
                CurvedAnimation(
                  parent: animation,
                  curve: Interval(
                    0.00,
                    0.50,
                  ),
                ),
              ),
              child: ScaleTransition(
                scale: Tween<double>(
                  begin: 1.5,
                  end: 1.0,
                ).animate(
                  CurvedAnimation(
                    parent: animation,
                    curve: Interval(
                      0.50,
                      1.00,
                    ),
                  ),
                ),
                child: child,
              ),
            );
          },
        );
}
