import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/news_http_client.dart';
import 'package:kagi_news/api/models/news_categories.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_state.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this._newsclient) : super(HomeScreenState.initial());
  final NewsHttpClient _newsclient;

  static R select<R>(
    BuildContext context,
    R Function(HomeScreenState state) find,
  ) => context.select<HomeScreenCubit, R>((value) => find(value.state));

  Future<void> initialLoad() async {
    if (state.status == HomeScreenStateStatus.inital) {
      requestsCategories();
    }
  }

  Future<void> requestsCategories() async {
    try {
      emit(state.copyWith(status: HomeScreenStateStatus.loading));
      await Future.delayed(const Duration(seconds: 1));
      final categories = await _newsclient.getCategories();

      emit(
        state.copyWith(
          listOfCategories: categories,
          status: HomeScreenStateStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: HomeScreenStateStatus.error,
        ),
      );
    }
  }

  Future<void> updateCategorySelection(
    Set<NewsCategory> selectedCategories,
  ) async {
    final displayedCategories =
        state.listOfCategories?.categories
            .where((element) => selectedCategories.contains(element))
            .toList();
    for (final category in selectedCategories) {
      requestCategoryIfNeeded(category);
    }
    emit(
      state.copyWith(
        selectedCategories: selectedCategories,
        displayedCategories: displayedCategories,
      ),
    );
  }

  Future<void> requestCategoryIfNeeded(NewsCategory newsCategory) async {
    if (state.categories.containsKey(newsCategory)) {
      return;
    }
    return requestCategory(newsCategory);
  }

  Future<void> requestCategory(NewsCategory newsCategory) async {
    try {
      _updateCategory(
        newsCategory,
        (state) =>
            state.copyWith(status: HomeScreenStateStatus.loading, error: null),
      );
      final category = await _newsclient.getCategory(category: newsCategory);
      _updateCategory(
        newsCategory,
        (state) => state.copyWith(
          categoryFeed: category,
          status: HomeScreenStateStatus.loaded,
        ),
      );
    } catch (e) {
      _updateCategory(
        newsCategory,
        (state) => state.copyWith(
          error: e.toString(),
          status: HomeScreenStateStatus.error,
        ),
      );
    }
  }

  void _updateCategory(
    NewsCategory category,
    CategoryState Function(CategoryState old) update,
  ) {
    final state = this.state;
    assert(state.isLoaded, 'state should be loaded before adding category');
    final newMap = Map<NewsCategory, CategoryState>.from(state.categories);
    final value = newMap[category];
    newMap[category] = update(
      value ?? CategoryState(categoryName: category.name!),
    );
    emit(state.copyWith(categories: newMap));
  }
}
