import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/url_category_map.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_state.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';

class HomeScreenCubit extends Cubit<HomeScreenState> {
  HomeScreenCubit(this._apiRepository) : super(HomeScreenState.initial());
  final CachedApiRepository _apiRepository;

  static R select<R>(
    BuildContext context,
    R Function(HomeScreenState state) find,
  ) => context.select<HomeScreenCubit, R>((value) => find(value.state));

  Future<void> refresh() async {
    if (state.status == HomeScreenStateStatus.loaded) {
      emit(
        state.copyWith(
          status: HomeScreenStateStatus.loading,

          displayedCategories: [],
        ),
      );
      await requestsCategories(forceRefresh: true);
    }
  }

  Future<void> requestsCategories({bool forceRefresh = false}) async {
    try {
      emit(state.copyWith(status: HomeScreenStateStatus.loading));
      final categories = await _apiRepository.getCategories(
        forceRefresh: forceRefresh,
      );

      emit(
        state.copyWith(
          listOfCategories: categories.categories,
          status: HomeScreenStateStatus.loaded,
        ),
      );
      await _loadDisplayedCategories();
    } catch (e) {
      emit(
        state.copyWith(
          errorMessage: e.toString(),
          status: HomeScreenStateStatus.error,
        ),
      );
    }
  }

  Future<void> _loadDisplayedCategories() async {
    final displayedCategories =
        state.listOfCategories
            .where((element) => state.selectedCategories.contains(element))
            .toList();
    emit(state.copyWith(displayedCategories: displayedCategories));
  }

  Future<void> updateCategorySelection(
    Set<UrlCategoryMap> selectedCategories,
  ) async {
    emit(state.copyWith(selectedCategories: selectedCategories));
    await _loadDisplayedCategories();
  }
}
