import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

import '../../../../core/errors/exceptions.dart';
import '../../../../core/tus_client/pages/category_page.dart';
import '../../../../core/tus_client/pages/index_page.dart';
import '../../../../core/tus_client/pages/message_close_page.dart';
import '../../../../core/tus_client/pages/message_entry_page.dart';
import '../../../../core/tus_client/pages/message_page.dart';
import '../../../../core/tus_client/repositories/tus_repository.dart';
import '../models/category_model.dart';
import '../models/fetch_message_result_model.dart';
import '../models/message_detail_model.dart';

abstract class MessageDataSource {
  Future<List<CategoryModel>> fetchCategories();
  Future<FetchMessageResultModel> fetchPage(int categoryId, int page);
  Future<MessageDetailModel> fetchMessage(int categoryId, int index, String link);
  Future<bool> switchEntryState(String pageId, bool state);
}

@LazySingleton(as: MessageDataSource)
class MessageDataSourceImpl implements MessageDataSource {
  final TUSRepository tusRepository;

  MessageDataSourceImpl({@required this.tusRepository});

  @override
  Future<MessageDetailModel> fetchMessage(int categoryId, int index, String link) async {
    final page = MessagePage(index: index, categoryId: categoryId, link: link);
    final page2 = MessageClosePage(index: index, categoryId: categoryId, link: link);
    final r = await tusRepository.requests([page2, page]);

    try {
      final result = MessageDetailModel.fromJson(page.resolveMessage(r.data.toString()));
      if (result.title.isEmpty || result.content == '<BR>') {
        throw TUSEmptyMessageException();
      }
      return result;
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<FetchMessageResultModel> fetchPage(int categoryId, int pageNum) async {
    final page = CategoryPage(categoryId: categoryId, page: pageNum);
    final r = await tusRepository.request(page);

    try {
      final lastPage = page.resolveLastPage(r.data.toString());
      return FetchMessageResultModel.fromJson({
        'isLastPage': lastPage - 1 <= pageNum,
        'messages': page.resolveMessages(r.data.toString()),
      });
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<List<CategoryModel>> fetchCategories() async {
    final page = IndexPage();
    final r = await tusRepository.request(page);

    try {
      final List<Map<String, dynamic>> categories = page.resolveCategories(r.data.toString());
      final messages = page.resolveMessages(r.data.toString());
      // classify messages
      final _categories = categories.map((c) => c..['messages'] = messages.where((m) => m['category'] == c['category']).toList());
      return _categories.map((c) => CategoryModel.fromJson(c)).toList();
    } on NoSuchMethodError {
      throw TUSFetchDataException();
    }
  }

  @override
  Future<bool> switchEntryState(String pageId, bool state) async {
    final page = MessageEntryPage(state: !state, pageId: pageId);
    final r = await tusRepository.request(page);
    RegExp reg;
    if (!state) {
      reg = RegExp(r'moshikomi_clear_off\.gif', caseSensitive: false);
    } else {
      reg = RegExp(r'moshikomi_off\.gif', caseSensitive: false);
    }
    return reg.hasMatch(r.data.toString());
  }
}
