import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:kagi_news/home_screen/widgets/_home_app_bar.dart';
import 'package:kagi_news/home_screen/widgets/_home_list_tile.dart';
import 'package:kagi_news/home_screen/widgets/home_screen_list.dart';

import 'home_page_page_object.dart';

class HomeScreenPageObject extends PageObject {
  HomeScreenPageObject() : super(find.byType(HomeScreenPage));
  HomeAppBarPageObject get homeAppBar => HomeAppBarPageObject();
  Finder get loadingIndicator => find.byType(CircularProgressIndicator);
}

class HomeScreenCard extends PageObject {
  HomeScreenCard() : super(find.byType(HomeListTile));
  Finder get websites =>
      find.descendant(of: this, matching: find.byKey(const Key('websites')));
  Finder get title =>
      find.descendant(of: this, matching: find.byKey(const Key('title')));
  Finder get sources =>
      find.descendant(of: this, matching: find.byKey(const Key('sources')));
  Finder get location =>
      find.descendant(of: this, matching: find.byKey(const Key('location')));
}

class HomeAppBarPageObject extends PageObject {
  HomeAppBarPageObject() : super(find.byType(HomeAppBar));
  Finder get title => find.byKey(const Key('app_title'));
  HomeCategorySelectionBar get selectionBar => HomeCategorySelectionBar(
    find.descendant(
      of: this,
      matching: find.byKey(const Key('category_selection')),
    ),
  );
}

class HomeCategorySelectionBar extends PageObject {
  HomeCategorySelectionBar(super.internal);
  Finder sectionForName(String name) =>
      find.descendant(of: this, matching: find.text(name));
}
