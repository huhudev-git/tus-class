import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import '../../../../lang/localizations.dart';
import '../../../auth/presentation/bloc/auth_bloc.dart';
import '../bloc/login_bloc.dart';

class LoginForm extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final Function(String) onSavedU;
  final Function(String) onSavedP;

  const LoginForm({Key key, this.formKey, this.onSavedU, this.onSavedP}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        state.maybeMap(
          success: (state) => BlocProvider.of<AuthBloc>(context).add(AuthEvent.loggedIn()),
          failed: (state) => Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(state.error.getMessage(context)),
                    Icon(Icons.error),
                  ],
                ),
                backgroundColor: Color(0xFFd9534f),
              ),
            ),
          orElse: () {},
        );
      },
      child: Form(
        key: widget.formKey,
        child: Theme(
          data: ThemeData(
            inputDecorationTheme: InputDecorationTheme(
              errorStyle: TextStyle(height: 0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  color: Theme.of(context).accentColor,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: BorderSide(
                  width: 2.0,
                  color: Theme.of(context).accentColor,
                ),
              ),
              contentPadding: EdgeInsets.all(0.0),
              hintStyle: Theme.of(context).inputDecorationTheme.hintStyle,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ListTile(
                title: Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('Campus Life Assist System TUS'),
              ),
              SizedBox(height: 20.0),
              UsernameField(onSaved: widget.onSavedU),
              SizedBox(height: 20.0),
              PasswordField(onSaved: widget.onSavedP),
              SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

class UsernameField extends StatelessWidget {
  final FormFieldSetter<String> onSaved;
  const UsernameField({Key key, this.onSaved}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(depth: -3),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: true,
        onSaved: onSaved,
        validator: (val) => val.isEmpty ? '' : null,
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context).translate('LABEL_USERNAME'),
          contentPadding: EdgeInsets.all(0.0),
          prefixIcon: Icon(
            Icons.person,
            color: Colors.blueAccent,
            size: 18.0,
          ),
        ),
      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  final FormFieldSetter<String> onSaved;
  const PasswordField({Key key, this.onSaved}) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(depth: -3),
      child: TextFormField(
        keyboardType: TextInputType.text,
        autofocus: true,
        onSaved: widget.onSaved,
        validator: (val) => val.isEmpty ? '' : null,
        style: TextStyle(
          fontWeight: FontWeight.w300,
        ),
        decoration: InputDecoration(
          hintText: AppLocalizations.of(context).translate('LABEL_PASSWORD'),
          contentPadding: EdgeInsets.all(0.0),
          prefixIcon: Icon(
            Icons.lock_outline,
            color: Colors.blueAccent,
            size: 18.0,
          ),
          suffixIcon: IconButton(
            onPressed: () => setState(() {
              _obscurePassword = !_obscurePassword;
            }),
            icon: Icon(
              Icons.remove_red_eye,
              size: 15.0,
              color: Colors.black26,
            ),
          ),
        ),
        obscureText: _obscurePassword,
      ),
    );
  }
}
