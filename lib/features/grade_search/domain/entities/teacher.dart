import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Teacher extends Equatable {
  final String code;
  final String name;

  const Teacher({
    @required this.code,
    @required this.name,
  });

  @override
  List<Object> get props => [name, code];
}
