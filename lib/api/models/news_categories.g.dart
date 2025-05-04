// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_NewsCategories _$NewsCategoriesFromJson(Map<String, dynamic> json) =>
    _NewsCategories(
      timestamp: (json['timestamp'] as num?)?.toInt(),
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => NewsCategory.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$NewsCategoriesToJson(_NewsCategories instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'categories': instance.categories,
    };

_NewsCategory _$NewsCategoryFromJson(Map<String, dynamic> json) =>
    _NewsCategory(name: json['name'] as String?, file: json['file'] as String?);

Map<String, dynamic> _$NewsCategoryToJson(_NewsCategory instance) =>
    <String, dynamic>{'name': instance.name, 'file': instance.file};
