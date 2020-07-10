import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/teacher_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/teacher_model.dart';

abstract class TeacherDataSource {
  Future<TeacherModel> fetchTeacher(String teacherId, String code, int year);
}

@LazySingleton(as: TeacherDataSource)
class TeacherDataSourceImpl implements TeacherDataSource {
  final TUSRepository tusRepository;

  TeacherDataSourceImpl({@required this.tusRepository});

  @override
  Future<TeacherModel> fetchTeacher(String teacherId, String code, int year) async {
    final page = TeacherPage(teacherId: teacherId, code: code, year: year);
    final r = await tusRepository.request(page);

    try {
      final result = page.resolverTeacher(r.data.toString());
      return TeacherModel.fromJson(result);
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }
}
