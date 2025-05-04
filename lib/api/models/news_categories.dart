import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_categories.freezed.dart';
part 'news_categories.g.dart';

@freezed
abstract class NewsCategories with _$NewsCategories {
  factory NewsCategories({
    int? timestamp,
    @Default([]) List<NewsCategory> categories,
  }) = _NewsCategories;

  factory NewsCategories.fromJson(Map<String, dynamic> json) =>
      _$NewsCategoriesFromJson(json);
}

@freezed
abstract class NewsCategory with _$NewsCategory {
  factory NewsCategory({String? name, String? file}) = _NewsCategory;

  factory NewsCategory.fromJson(Map<String, dynamic> json) =>
      _$NewsCategoryFromJson(json);
}
