import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class LoginResult extends Equatable {
  final bool isAuth;
  final String name;
  final String error;

  const LoginResult({
    @required this.isAuth,
    @required this.name,
    @required this.error,
  });

  @override
  List<Object> get props => [isAuth, name, error];
}
