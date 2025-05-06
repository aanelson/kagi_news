// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_category_map.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UrlCategoryMapList _$UrlCategoryMapListFromJson(Map<String, dynamic> json) =>
    _UrlCategoryMapList(
      timestamp: (json['timestamp'] as num?)?.toInt(),
      categories:
          (json['categories'] as List<dynamic>?)
              ?.map((e) => UrlCategoryMap.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$UrlCategoryMapListToJson(_UrlCategoryMapList instance) =>
    <String, dynamic>{
      'timestamp': instance.timestamp,
      'categories': instance.categories,
    };

_UrlCategoryMap _$UrlCategoryMapFromJson(Map<String, dynamic> json) =>
    _UrlCategoryMap(name: json['name'] as String, file: json['file'] as String);

Map<String, dynamic> _$UrlCategoryMapToJson(_UrlCategoryMap instance) =>
    <String, dynamic>{'name': instance.name, 'file': instance.file};
