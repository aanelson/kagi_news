import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/news_categories.dart';
import 'package:kagi_news/extensions/set.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_state.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this._apiRepository) : super(HomeScreenState.initial());
  final CachedApiRepository _apiRepository;

  static R select<R>(
    BuildContext context,
    R Function(HomeScreenState state) find,
  ) => context.select<HomeScreenCubit, R>((value) => find(value.state));

  Future<void> initialLoad() async {
    if (state.status == HomeScreenStateStatus.inital) {
      emit(state.copyWith(status: HomeScreenStateStatus.loading));
      await Future.delayed(const Duration(seconds: 1));

      requestsCategories();
    }
  }

  Future<void> refresh() async {
    if (state.status == HomeScreenStateStatus.loaded) {
      emit(
        state.copyWith(
          status: HomeScreenStateStatus.loading,
          categories: {},
          displayedCategories: [],
        ),
      );
      await requestsCategories(forceRefresh: true);
    }
  }

  Future<void> toggleClusterExpansion(NewsCategory category, int index) async {
    _updateCategory(category, (state) {
      final set = state.expandedCluster.toggle(index);
      return state.copyWith(expandedCluster: set);
    });
  }

  Future<void> requestsCategories({bool forceRefresh = false}) async {
    try {
      emit(state.copyWith(status: HomeScreenStateStatus.loading));
      final categories = await _apiRepository.getCategories(
        forceRefresh: forceRefresh,
      );

      emit(
        state.copyWith(
          listOfCategories: categories,
          status: HomeScreenStateStatus.loaded,
        ),
      );
      await _loadSelected();
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: HomeScreenStateStatus.error,
        ),
      );
    }
  }

  Future<void> _loadSelected() async {
    final displayedCategories =
        state.listOfCategories?.categories
            .where((element) => state.selectedCategories.contains(element))
            .toList();
    emit(state.copyWith(displayedCategories: displayedCategories));

    if (state.isLoaded) {
      final futures = <Future<void>>[];
      for (final category in state.selectedCategories) {
        futures.add(requestCategoryIfNeeded(category));
      }
      await Future.wait(futures);
    }
  }

  Future<void> updateCategorySelection(
    Set<NewsCategory> selectedCategories,
  ) async {
    emit(state.copyWith(selectedCategories: selectedCategories));
    await _loadSelected();
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
      final category = await _apiRepository.getCategory(category: newsCategory);
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
