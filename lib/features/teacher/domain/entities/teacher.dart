import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class Teacher extends Equatable {
  final String position;
  final String location;
  final String workTime;
  final String url;
  final String email;
  final String name;

  const Teacher({
    @required this.position,
    @required this.location,
    @required this.workTime,
    @required this.url,
    @required this.email,
    @required this.name,
  });

  @override
  List<Object> get props => [position, location, workTime, url, email, name];
}
