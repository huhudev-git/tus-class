import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../lang/localizations.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';

class RememberMeButtom extends StatelessWidget {
  final VoidCallback onTap;

  const RememberMeButtom({this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              gradient: LinearGradient(
                colors: const <Color>[
                  Colors.green,
                  Colors.green,
                  Colors.greenAccent,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500],
                  offset: Offset(0.0, 1.5),
                  blurRadius: 1.5,
                ),
              ],
            ),
            child: Material(
              borderRadius: BorderRadius.circular(25.0),
              shadowColor: Colors.blueAccent,
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25.0),
                onTap: onTap,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).translate('LABEL_REMEBER_ME'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              gradient: LinearGradient(
                colors: const <Color>[
                  Color(0xFF7F7FD5),
                  Color(0xFF86A8E7),
                  Color(0xFF91EAE4),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey[500],
                  offset: Offset(0.0, 1.5),
                  blurRadius: 1.5,
                ),
              ],
            ),
            child: Material(
              borderRadius: BorderRadius.circular(25.0),
              shadowColor: Colors.blueAccent,
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(25.0),
                onTap: () => BlocProvider.of<AuthBloc>(context).add(AuthEvent.loggedIn()),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Text(
                      AppLocalizations.of(context).translate('LABEL_GOTO_HOME'),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
