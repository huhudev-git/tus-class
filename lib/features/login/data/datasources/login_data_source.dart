import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/login_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/login_result_model.dart';

abstract class LoginDataSource {
  Future<LoginResultModel> login(String username, String password);
}

@LazySingleton(as: LoginDataSource)
class LoginDataSourceImpl implements LoginDataSource {
  final TUSRepository tusRepository;

  LoginDataSourceImpl({@required this.tusRepository});

  @override
  Future<LoginResultModel> login(String username, String password) async {
    // get first page id
    // ! only run once during one session lifetime
    await tusRepository.init();

    final page = LoginPage(username: username, password: password);

    // login
    final r = await tusRepository.request(page);

    if (r.statusCode == 200) {
      try {
        final result = page.resolveLogin(r.data.toString());
        return LoginResultModel.fromJson(result);
      } on NoSuchMethodError {
        throw TUSFetchDataException();
      }
    } else {
      throw ServerException();
    }
  }
}
