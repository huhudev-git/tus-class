import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../bloc/login_bloc.dart';
import '../widgets/login_buttom.dart';
import '../widgets/login_forget_buttom.dart';
import '../widgets/login_form.dart';
import '../widgets/login_remeber_me_buttom.dart';
import '../widgets/login_title.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _username;
  String _password;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<LoginBloc>(
      create: (context) => getIt<LoginBloc>(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20.0),
                  SafeArea(child: LoginTitle()),
                  Expanded(
                    child: LoginForm(
                      formKey: _formKey,
                      onSavedU: (val) => _username = val,
                      onSavedP: (val) => _password = val,
                    ),
                  ),
                  Divider(),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return AnimatedCrossFade(
                        duration: Duration(seconds: 1),
                        crossFadeState: (state is FirstLogin) ? CrossFadeState.showSecond : CrossFadeState.showFirst,
                        firstChild: LoginButtom(
                          formKey: _formKey,
                          onTap: () => BlocProvider.of<LoginBloc>(context).add(
                            LoginEvent.login(
                              username: _username,
                              password: _password,
                            ),
                          ),
                        ),
                        secondChild: RememberMeButtom(
                          onTap: () => BlocProvider.of<AuthBloc>(context).add(
                            AuthEvent.persistToken(
                              username: _username,
                              password: _password,
                            ),
                          ),
                        ),
                        layoutBuilder: (Widget topChild, Key topChildKey, Widget bottomChild, Key bottomChildKey) {
                          return Stack(
                            alignment: Alignment.center,
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
                      );
                    },
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, state) {
                      return state.maybeMap(
                        orElse: () => ForgetButton(),
                        success: (state) => IgnorePointer(
                          child: Opacity(
                            opacity: 0.0,
                            child: ForgetButton(),
                          ),
                        ),
                        firstLogin: (state) => IgnorePointer(
                          child: Opacity(
                            opacity: 0.0,
                            child: ForgetButton(),
                          ),
                        ),
                      );
                    },
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
