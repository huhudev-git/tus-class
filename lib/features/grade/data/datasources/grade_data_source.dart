import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/grade_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/grade_model.dart';

abstract class GradeDataSource {
  Future<List<GradeModel>> fetchGrade();
}

@LazySingleton(as: GradeDataSource)
class GradeDataSourceImpl implements GradeDataSource {
  final TUSRepository tusRepository;

  GradeDataSourceImpl({@required this.tusRepository});

  @override
  Future<List<GradeModel>> fetchGrade() async {
    final page = GradePage();
    final r = await tusRepository.request(page);

    try {
      final result = page.resolveGrade(r.data.toString());
      return result.map((c) => GradeModel.fromJson(c)).toList();
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }
}
