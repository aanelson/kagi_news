import 'package:async/async.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/news_categories.dart';
import 'package:kagi_news/api/news_http_client.dart';

class CachedApiRepository {
  CachedApiRepository(this._newsHttpClient);
  final NewsHttpClient _newsHttpClient;
  final AsyncCache<NewsCategories> _categoryCache = AsyncCache<NewsCategories>(
    const Duration(hours: 1),
  );
  final Map<String, AsyncCache<CategoryFeed>> _categoriesCache = {};

  Future<NewsCategories> getCategories({bool forceRefresh = false}) async {
    if (forceRefresh) {
      _categoryCache.invalidate();
    }
    return _categoryCache.fetch(() async {
      final categories = await _newsHttpClient.getCategories();
      return categories;
    });
  }

  Future<CategoryFeed> getCategory({
    required NewsCategory category,
    bool forceRefresh = false,
  }) async {
    final cache =
        _categoriesCache[category.file!] ??= AsyncCache<CategoryFeed>(
          const Duration(hours: 1),
        );
    if (forceRefresh) {
      cache.invalidate();
    }
    return cache.fetch(() async {
      final categoryFeed = await _newsHttpClient.getCategory(
        category: category,
      );
      return categoryFeed;
    });
  }
}
