import 'package:async/async.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/request_id.dart';
import 'package:kagi_news/api/models/url_category_map.dart';
import 'package:kagi_news/api/news_http_client.dart';

class CachedApiRepository {
  CachedApiRepository(
    this._newsHttpClient, [
    Duration cacheDuration = const Duration(hours: 1),
  ]) : _categoryCache = AsyncCache<UrlCategoryMapList>(cacheDuration);
  final NewsHttpClient _newsHttpClient;
  final AsyncCache<UrlCategoryMapList> _categoryCache;
  final Map<String, CategoryFeed> _categoriesCache = {};

  Future<UrlCategoryMapList> getCategories({bool forceRefresh = false}) async {
    if (forceRefresh) {
      _categoryCache.invalidate();
    }
    return _categoryCache.fetch(() async {
      final categories = await _newsHttpClient.getCategories();
      return categories;
    });
  }

  CategoryFeed? getCategoryFromCache(RequestId id) {
    return _categoriesCache[id.file];
  }

  Future<CategoryFeed> getCategory({
    required RequestId category,
    bool forceRefresh = false,
  }) async {
    final cachedValue = _categoriesCache[category.file];
    if (!forceRefresh && cachedValue != null) {
      return cachedValue;
    }
    final categoryFeed = await _newsHttpClient.getCategory(category: category);
    return _categoriesCache[category.file] = categoryFeed;
  }
}
