import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';
import 'package:kagi_news/home_screen/repository/home_screen_repository.dart';
import 'package:kagi_news/home_screen/widgets/home_screen_list.dart';
import 'package:kagi_news/main.dart';
import 'package:widget_test_harness/widget_test_harness.dart';

import '../helpers/api_harness_mixin.dart';
import '../helpers/cached_api_repository.dart';
import '../helpers/page_object.dart';

final pageObject = HomeScreenPageObject();
void main() {
  testWidgets(
    'can select categories',
    harness((given, when, then) async {
      given.returnsJsonForCategory();
      given.returnsJsonForWorldData();
      await given.pumpHomeScreen();
      then.findsOneWidget(pageObject);
      then.findsOneWidget(pageObject.homeAppBar);
      await when.tap(
        pageObject.homeAppBar.selectionBar.sectionForName('World'),
      );
      await when.pumpAndSettle();
      then.findsAtLeastNWidgets(HomeScreenCard(), 2);
    }),
  );
  testWidgets(
    'maps values to cards correctly',
    harness((given, when, then) async {
      given.returnsJsonForCategory();
      given.returnsJsonForWorldData();
      await given.pumpHomeScreen();
      await when.tap(
        pageObject.homeAppBar.selectionBar.sectionForName('World'),
      );
      await when.pumpAndSettle();
      final po = HomeScreenCard();
      then.findsWidgetWithText(
        po.title.first,
        'Nine killed at Filipino festival in Vancouver',
      );
      then.findsWidgetWithText(po.sources.first, 'Sources: 31');
      then.findsWidgetWithText(po.websites.first, 'Unique websites: 23');
    }),
  );
  testWidgets(
    'shows loading indicator',
    harness((given, when, then) async {
      await given.pumpHomeScreen();
      then.findsOneWidget(pageObject);
      then.findsOneWidget(pageObject.loadingIndicator);
      when.categoryReturns();
      await when.pumpAndSettle();
      then.findsNothing(pageObject.loadingIndicator);
    }),
  );
}

final harness = HarnessSetup.setupWidgetHarness(HomeScreenTestHarness.new);

final class HomeScreenTestHarness extends WidgetTestHarness
    with NetworkApiMixin, CachedApiRepositoryMixin {
  HomeScreenTestHarness(super.tester);
  late final HomeScreenCubit _homeScreenCubit = HomeScreenCubit(
    cachedApiRepository,
  );
  @override
  Widget setupWidgetTree(Widget child) {
    return super.setupWidgetTree(
      RepositoryProvider.value(
        value: HomeScreenRepository(cachedApiRepository),

        child: BlocProvider.value(value: _homeScreenCubit, child: child),
      ),
    );
  }
}

extension on Given<HomeScreenTestHarness> {
  Future<void> pumpHomeScreen() async {
    await tester.pumpWidget(
      this.harness.setupWidgetTree(
        MyApp(child: const HomeScreenPage(startupDelay: Duration())),
      ),
    );
    await tester.pump();
    await tester.idle();
    await tester.idle();
    await tester.pump();
  }
}
