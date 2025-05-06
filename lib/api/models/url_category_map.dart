import 'package:freezed_annotation/freezed_annotation.dart';

part 'url_category_map.freezed.dart';
part 'url_category_map.g.dart';

@freezed
abstract class UrlCategoryMapList with _$UrlCategoryMapList {
  factory UrlCategoryMapList({
    int? timestamp,
    @Default([]) List<UrlCategoryMap> categories,
  }) = _UrlCategoryMapList;

  factory UrlCategoryMapList.fromJson(Map<String, dynamic> json) =>
      _$UrlCategoryMapListFromJson(json);
}

@freezed
abstract class UrlCategoryMap with _$UrlCategoryMap {
  factory UrlCategoryMap({required String name, required String file}) =
      _UrlCategoryMap;

  factory UrlCategoryMap.fromJson(Map<String, dynamic> json) =>
      _$UrlCategoryMapFromJson(json);
}
