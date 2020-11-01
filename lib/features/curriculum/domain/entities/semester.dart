import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Semester extends Equatable {
  final String name;
  final String value;

  const Semester({
    @required this.name,
    @required this.value,
  });

  @override
  List<Object> get props => [
        name,
        value,
      ];
}
