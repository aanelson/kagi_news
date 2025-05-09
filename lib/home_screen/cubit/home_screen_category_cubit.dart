import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/url_category_map.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_state.dart';
import 'package:kagi_news/home_screen/repository/home_screen_repository.dart';

class HomeScreenCategoryCubit extends Cubit<HomeScreenCategoryState> {
  HomeScreenCategoryCubit({
    required this.category,
    required HomeScreenRepository homeScreenRepository,
  }) : _homeScreenRepository = homeScreenRepository,
       super(
         HomeScreenCategoryState(
           categoryMap: category,
           status: CategoryStateStatus.inital,
         ),
       );
  final UrlCategoryMap category;
  final HomeScreenRepository _homeScreenRepository;
  static R select<R>(
    BuildContext context,
    R Function(HomeScreenCategoryState state) find,
  ) => context.select<HomeScreenCategoryCubit, R>((value) => find(value.state));

  Future<void> requestCategory({bool forceRefresh = false}) async {
    try {
      final cache = _homeScreenRepository.getCategoryFromCache(this.category);
      if (cache != null && !forceRefresh) {
        emit(state.copyWith(status: CategoryStateStatus.loaded, items: cache));
        return;
      }
      emit(state.copyWith(status: CategoryStateStatus.loading, error: null));
      final category = await _homeScreenRepository.getCategory(
        category: state.categoryMap,
        forceRefresh: forceRefresh,
      );
      emit(state.copyWith(items: category, status: CategoryStateStatus.loaded));
    } catch (e) {
      emit(
        state.copyWith(error: e.toString(), status: CategoryStateStatus.error),
      );
    }
  }
}
