import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/request_id.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_state.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';

class HomeScreenRepository {
  final CachedApiRepository _apiRepository;
  HomeScreenRepository(this._apiRepository);

  List<HomeScreenListItem>? getCategoryFromCache(RequestId id) {
    final cachedValue = _apiRepository.getCategoryFromCache(id);
    if (cachedValue == null) {
      return null;
    }
    return _mapFromCategoryFeed(cachedValue, id);
  }

  Future<List<HomeScreenListItem>> getCategory({
    required RequestId category,
    bool forceRefresh = false,
  }) async {
    try {
      final categoryFeed = await _apiRepository.getCategory(
        category: category,
        forceRefresh: forceRefresh,
      );
      return _mapFromCategoryFeed(categoryFeed, category);
    } catch (e) {
      throw Exception('Failed to load category: $e');
    }
  }

  List<HomeScreenListItem> _mapFromCategoryFeed(
    CategoryFeed feed,
    RequestId id,
  ) {
    return feed.clusters.map((e) {
      return HomeScreenListItem(
        title: e.title!,
        numberOfArticles: e.numberOfTitles!,
        uniqueDomains: e.uniqueDomains!,
        location: e.location ?? '',
        id: id,
      );
    }).toList();
  }
}
