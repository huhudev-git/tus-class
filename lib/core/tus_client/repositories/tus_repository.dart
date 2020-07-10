import 'package:dio/dio.dart';

import '../pages/abstract_page/page.dart';

abstract class TUSRepository {
  Future<void> init();
  Future<Response> request(Page page);
  Future<Response> requests(List<Page> pages);
  Page get currentPage;
}
