import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class MessageFile extends Equatable {
  final int index;
  final String filename;
  final int size;

  const MessageFile({
    @required this.index,
    @required this.filename,
    @required this.size,
  });

  @override
  List<Object> get props => [index, filename, size];
}
