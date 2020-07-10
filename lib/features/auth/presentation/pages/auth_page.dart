import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../../../login/presentation/pages/login_page.dart';
import '../bloc/auth_bloc.dart';
import 'home_page.dart';
import 'splash_page.dart';

class AuthPage extends StatefulWidget {
  @override
  _AuthPageState createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>()..add(AuthEvent.appStart()),
      child: Scaffold(
        body: BlocConsumer<AuthBloc, AuthState>(
          listener: (context, state) {
            state.maybeMap(
              failed: (state) => Scaffold.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                    backgroundColor: Theme.of(context).errorColor,
                    content: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(state.error.getMessage(context)),
                        Icon(Icons.error),
                      ],
                    ),
                  ),
                ),
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.map(
              initial: (_) => SplashPage(),
              authed: (_) => HomePage(),
              unauthed: (_) => LoginPage(),
              failed: (_) => LoginPage(),
            );
          },
        ),
      ),
    );
  }
}
