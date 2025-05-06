import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:kagi_news/api/news_http_client.dart';
import 'package:kagi_news/api/models/url_category_map.dart';
import 'package:widget_test_harness/widget_test_harness.dart';

import '../helpers/harness_mixins.dart';

void main() {
  test(
    'returns category data',
    harness((given, when, then) async {
      given.returnsJsonForCategory();
      await when.requestsCategories();
      expect(then.getCategoriesCalls, isNotEmpty);
    }),
  );
}

final harness = HarnessSetup.setupHarness(ApiTestHarness.new);

final class ApiTestHarness extends UnitTestHarness with FileLoad {
  ApiTestHarness();
  late final StubClient _client = StubClient();
  late final NewsHttpClient _newsHttpClient = NewsHttpClient(_client);
  final _urlBuilder = const UrlBuilder();
  final List<UrlCategoryMapList> getCategoriesCalls = [];
  final List<UrlCategoryMap> getCategoryCalls = [];
}

extension on Then<ApiTestHarness> {
  List<UrlCategoryMapList> get getCategoriesCalls =>
      this.harness.getCategoriesCalls;
}

extension on When<ApiTestHarness> {
  Future<void> requestsCategories() async {
    this.harness.getCategoriesCalls.add(
      await this.harness._newsHttpClient.getCategories(),
    );
  }

  Future<void> requestsCategory() async {}
}

extension GivenApiHarness on Given<ApiTestHarness> {
  void returnsJsonForGet({required String fileName}) {
    final path = '${Directory.current.path}/test/api/$fileName';
    final file = File(path);
    final response = Response(file.readAsStringSync(), 200);
    this.harness._client.response = Future.value(response);
  }

  void returnsJsonForCategory() {
    returnsJsonForGet(fileName: 'category_data.json');
  }

  void returnsJsonForWorldData() {
    returnsJsonForGet(fileName: 'world_data.json');
  }
}

class StubClient implements Client {
  Future<Response> response = Future.value(Response('', 200));
  List<({Uri url, Map<String, String>? headers})> getCalls = [];
  Future<Response> get(Uri url, {Map<String, String>? headers}) {
    getCalls.add((url: url, headers: headers));
    return response;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError();
  }
}
