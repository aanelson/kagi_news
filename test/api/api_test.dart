import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/request_id.dart';
import 'package:kagi_news/api/models/url_category_map.dart';
import 'package:widget_test_harness/widget_test_harness.dart';

import '../helpers/api_harness_mixin.dart';

void main() {
  test(
    'returns category data',
    harness((given, when, then) async {
      given.returnsJsonForCategory();
      await when.requestsCategories();
      expect(then.getCategoriesCalls, isNotEmpty);
    }),
  );
  test(
    'return world data',
    harness((given, when, then) async {
      given.returnsJsonForWorldData();
      await when.requestWorldCategory();
      expect(then.categoryFeedCallse, isNotEmpty);
    }),
  );
}

final harness = HarnessSetup.setupHarness(ApiTestHarness.new);

final class ApiTestHarness extends UnitTestHarness with NetworkApiMixin {
  ApiTestHarness();
  final List<UrlCategoryMapList> getCategoriesCalls = [];
  final List<CategoryFeed> getCategoryFeed = [];
}

extension on When<ApiTestHarness> {
  Future<void> requestsCategories() async {
    this.harness.getCategoriesCalls.add(
      await this.harness.newsHttpClient.getCategories(),
    );
  }

  Future<void> requestWorldCategory() async {
    this.harness.getCategoryFeed.add(
      await this.harness.newsHttpClient.getCategory(
        category: RequestId('world.json'),
      ),
    );
  }
}

extension on Then<ApiTestHarness> {
  List<UrlCategoryMapList> get getCategoriesCalls =>
      this.harness.getCategoriesCalls;
  List<CategoryFeed> get categoryFeedCallse => this.harness.getCategoryFeed;
}
