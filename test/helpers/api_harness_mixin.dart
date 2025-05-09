import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:kagi_news/api/news_http_client.dart';
import 'package:widget_test_harness/widget_test_harness.dart';

base mixin NetworkApiMixin on FlutterTestHarness {
  late final StubClient _client = StubClient();
  late final NewsHttpClient newsHttpClient = NewsHttpClient(_client);
  final _urlBuilder = const UrlBuilder();
  dynamic loadJson(String fileName) {
    final file = File(fileName);
    return jsonDecode(file.readAsStringSync());
  }

  final List<Completer> completers = [];
}

class StubClient implements Client {
  final Map<Uri, (Completer<Response>?, Future<Response>)> response = {};
  List<({Uri url, Map<String, String>? headers})> getCalls = [];
  @override
  Future<Response> get(Uri url, {Map<String, String>? headers}) async {
    getCalls.add((url: url, headers: headers));
    final value = response[url];
    if (value == null) {
      final completer = Completer<Response>();
      response[url] = (completer, completer.future);
    }
    return response[url]!.$2;
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    throw UnimplementedError();
  }
}

Response _getJson(String fileName) {
  final path = '${Directory.current.path}/test/api/$fileName';
  final file = File(path);
  final string = file.readAsStringSync();
  return Response(latin1.decode(utf8.encode(string)), 200);
}

extension GivenApiHarness on Given<NetworkApiMixin> {
  void returnsJsonForGet({required Uri url, required String fileName}) {
    harness._client.response[url] = (null, Future.value(_getJson(fileName)));
  }

  void returnsJsonForCategory() {
    returnsJsonForGet(
      fileName: 'category_data.json',
      url: harness._urlBuilder.categories,
    );
  }

  void returnsJsonForWorldData() {
    returnsJsonForGet(
      fileName: 'world.json',
      url: harness._urlBuilder.categoryFromFile('world.json'),
    );
  }
}

extension WhenApiHarness on When<NetworkApiMixin> {
  Future<void> categoryReturns() async {
    final value = harness._client.response[harness._urlBuilder.categories];
    expect(value?.$1, isNotNull);
    value!.$1?.complete(_getJson('category_data.json'));
  }

  void worldReturns() {
    final value =
        harness._client.response[harness._urlBuilder.categoryFromFile(
          'world.json',
        )];
    expect(value?.$1, isNotNull);
    value!.$1?.complete(_getJson('world.json'));
  }
}
