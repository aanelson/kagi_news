import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/url_category_map.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_state.dart';
import 'package:kagi_news/repositories/cached_api_repository.dart';

class HomeScreenCategoryCubit extends Cubit<HomeScreenCategoryState> {
  HomeScreenCategoryCubit({
    required this.category,
    required CachedApiRepository apiRepository,
  }) : _apiRepository = apiRepository,
       super(
         HomeScreenCategoryState(
           categoryMap: category,
           status: CategoryStateStatus.inital,
         ),
       );
  final UrlCategoryMap category;
  final CachedApiRepository _apiRepository;
  static R select<R>(
    BuildContext context,
    R Function(HomeScreenCategoryState state) find,
  ) => context.select<HomeScreenCategoryCubit, R>((value) => find(value.state));

  Future<void> requestCategory({bool forceRefresh = false}) async {
    try {
      final cache = _apiRepository.getCategoryFromCache(this.category.file);
      if (cache != null && !forceRefresh) {
        emit(
          state.copyWith(
            status: CategoryStateStatus.loaded,
            categoryFeed: cache,
          ),
        );
        return;
      }
      emit(state.copyWith(status: CategoryStateStatus.loading, error: null));
      final category = await _apiRepository.getCategory(
        category: state.categoryMap,
        forceRefresh: forceRefresh,
      );
      emit(
        state.copyWith(
          categoryFeed: category,
          status: CategoryStateStatus.loaded,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(error: e.toString(), status: CategoryStateStatus.error),
      );
    }
  }
}
