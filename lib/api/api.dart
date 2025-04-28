import 'dart:convert';

import 'package:http/http.dart';
import 'package:kagi_news/api/category_feed.dart';
import 'package:kagi_news/api/news_categories.dart';

class NewsHttpClient {
  final Client _client;

  NewsHttpClient(this._client);
  Future<NewsCategories> getCategories() async {
    final response = await _client.get(
      Uri.parse('https://kite.kagi.com/kite.json'),
    );
    final decode = jsonDecode(response.body);
    return NewsCategories.fromJson(decode);
  }

  Future<CategoryFeed> getCategory({required String file}) async {
    final url = Uri.parse('https://kite.kagi.com/$file');
    final response = await _client.get(url);
    final decode = jsonDecode(response.body);
    return CategoryFeed.fromJson(decode);
  }
}
