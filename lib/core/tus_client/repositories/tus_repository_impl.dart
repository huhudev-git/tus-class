import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../features/message/domain/entities/category.dart';
import '../data_source/tus_client.dart';
import '../pages/abstract_page/direct_page.dart';
import '../pages/abstract_page/page.dart';
import '../pages/home_page.dart';
import '../pages/index_page.dart';
import 'tus_repository.dart';

@Injectable(as: TUSRepository)
class TUSRepositoryImpl implements TUSRepository {
  final TUSClient tusClient;

  TUSRepositoryImpl({
    @required this.tusClient,
  });

  @override
  Page get currentPage => tusClient.currentPage;

  @override
  Future<void> init() async {
    await tusClient.init();
  }

  @override
  Future<Response> requests(List<Page> pages) async {
    Response r;
    for (final page in pages) {
      await _logic(page);
      r = await tusClient.request(page);
    }
    return r;
  }

  @override
  Future<Response> request(Page page) async {
    await _logic(page);
    final r = await tusClient.request(page);
    return r;
  }

  /// resolve the logic when goto [page]
  Future<void> _logic(Page page) async {
    final path = _getPath(page);
    //print("-=-=-=-=-=-=- current: $currentPage -> $page, path: $path -=-=-=-=-=-=-=-");
    await tusClient.requests(path);
  }

  List<Page> _getPath(Page page) {
    Page parent = page;
    final List<Page> path = [];

    while (parent is! DirectPage && parent != currentPage && parent.parent != null && parent.parent != currentPage) {
      path.add(parent.parent);
      parent = parent.parent;
    }

    if (path.isNotEmpty && path.last == currentPage) {
      path.removeLast();
    }

    // child page back to indexpage anyway
    // 2 type index page
    // How Bad the class system is !!!
    if (path.isNotEmpty && path.last is IndexPage) {
      if (page is! Category) {
        if (HomePage.isAllCategory) {
          path.removeLast();
          path.add(HomePage());
        } else {
          path.add(HomePage());
        }
      }
    }

    return path.reversed.toList();
  }
}
