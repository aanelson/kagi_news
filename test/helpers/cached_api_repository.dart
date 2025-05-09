import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/news_http_client.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';
import 'package:widget_test_harness/widget_test_harness.dart';

base mixin CachedApiRepositoryMixin on FlutterTestHarness {
  late final CachedApiRepository cachedApiRepository = CachedApiRepository(
    newsHttpClient,
    Duration(),
  );
  NewsHttpClient get newsHttpClient;
  @override
  Widget setupWidgetTree(Widget child) {
    return super.setupWidgetTree(
      RepositoryProvider.value(value: cachedApiRepository, child: child),
    );
  }
}
