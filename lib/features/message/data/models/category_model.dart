import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/category.dart';
import 'message_model.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
abstract class CategoryModel implements _$CategoryModel {
  const factory CategoryModel({
    @required int index,
    @required List<MessageModel> messages,
    @required String category,
    @required int page,
    @required bool isLastPage,
  }) = _CategoryModel;
  const CategoryModel._();

  Category toDomain() {
    return Category(
      index: index,
      messages: messages.map((e) => e.toDomain()).toList(),
      category: category,
      page: page,
      isLastPage: isLastPage,
    );
  }

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);
}
