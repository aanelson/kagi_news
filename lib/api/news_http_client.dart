import 'dart:convert';

import 'package:http/http.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/url_category_map.dart';

class UrlBuilder {
  const UrlBuilder();
  static const baseUrl = 'https://kite.kagi.com';
  Uri get categories => Uri.parse('$baseUrl/kite.json');
  Uri category(UrlCategoryMap category) =>
      categoryFromFile(category.file); // todo
  Uri categoryFromFile(String file) => Uri.parse('$baseUrl/$file');
}

class NewsHttpClient {
  final Client _client;
  final UrlBuilder _urlBuilder = UrlBuilder();

  NewsHttpClient(this._client);
  Future<UrlCategoryMapList> getCategories() async {
    final response = await _client.get(_urlBuilder.categories);
    if (response.statusCode != 200) {
      throw Exception('Failed to load category data');
    }
    final utf8String = utf8.decode(response.bodyBytes);
    final decode = jsonDecode(utf8String);
    return UrlCategoryMapList.fromJson(decode);
  }

  Future<CategoryFeed> getCategory({required UrlCategoryMap category}) async {
    final response = await _client.get(_urlBuilder.category(category));
    if (response.statusCode != 200) {
      throw Exception('Failed to load category data');
    }
    final utf8String = utf8.decode(response.bodyBytes);
    final decode = jsonDecode(utf8String);
    return CategoryFeed.fromJson(decode);
  }
}
