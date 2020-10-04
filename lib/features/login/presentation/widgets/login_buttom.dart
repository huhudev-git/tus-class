import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tus_class/lang/localizations.dart';

import '../bloc/login_bloc.dart';

class LoginButtom extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final VoidCallback onTap;

  const LoginButtom({Key key, this.formKey, this.onTap}) : super(key: key);

  @override
  _LoginButtomState createState() => _LoginButtomState();
}

class _LoginButtomState extends State<LoginButtom> with TickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _controller;
  double _width = double.infinity;

  final GlobalKey _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: Duration(milliseconds: 300), vsync: this);
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller)
      ..addListener(() {
        setState(() {
          _width = _key.currentContext.size.width - ((_key.currentContext.size.width - _key.currentContext.size.height) * _animation.value + 5);
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (BuildContext context, LoginState state) {
        if ((state is! Loading) && (state is! Success)) {
          _width = double.infinity;
        }

        return Container(
          key: _key,
          width: _width,
          margin: EdgeInsets.symmetric(vertical: 3.0, horizontal: 3.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            gradient: LinearGradient(
              colors: const <Color>[
                Color(0xff7F7FD5),
                Color(0xff86A8E7),
                Color(0xff91EAE4),
              ],
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.white.withOpacity(0.8),
                offset: Offset(-2.0, -2.0),
                blurRadius: 2.0,
              ),
              BoxShadow(
                color: Colors.grey[500],
                offset: Offset(1.5, 1.5),
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
              onTap: () => _formSubmit(state),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Center(
                  child: SizedBox(
                    height: 27.0,
                    child: _loginButtomContent(state),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _loginButtomContent(LoginState state) {
    return state.maybeMap(
      orElse: () => Text(
        AppLocalizations.of(context).translate('LABEL_LOGIN'),
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
          fontWeight: FontWeight.w300,
        ),
      ),
      loading: (_) => SizedBox(
        height: 27.0,
        width: 27.0,
        child: CircularProgressIndicator(
          strokeWidth: 2.0,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        ),
      ),
      success: (_) => Icon(
        Icons.check,
        size: 20.0,
        color: Colors.greenAccent,
      ),
    );
  }

  void _formSubmit(LoginState state) {
    if (state is Loading || state is Success) return;

    if (widget.formKey.currentState.validate()) {
      widget.formKey.currentState.save();
      if (_controller.isCompleted) {
        _controller.reset();
      }
      _controller.forward();
      widget.onTap();
    }
  }
}
