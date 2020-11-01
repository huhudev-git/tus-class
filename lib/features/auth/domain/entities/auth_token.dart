import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class AuthToken extends Equatable {
  final String username;
  final String password;

  const AuthToken({
    @required this.username,
    @required this.password,
  });

  @override
  List<Object> get props => [
        username,
        password,
      ];
}
