import 'package:equatable/equatable.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/url_category_map.dart';

class HomeScreenCategoryState extends Equatable {
  const HomeScreenCategoryState({
    required this.categoryMap,
    this.error,
    this.categoryFeed = const CategoryFeed(),
    this.status = CategoryStateStatus.inital,
    this.expandedCluster = const {},
  });
  final UrlCategoryMap categoryMap;

  final String? error;
  bool get isLoaded => status == CategoryStateStatus.loaded;
  final CategoryStateStatus status;
  final CategoryFeed categoryFeed;
  final Set<int> expandedCluster;
  @override
  List<Object?> get props => [
    error,
    categoryFeed,
    status,
    expandedCluster,
    categoryMap,
  ];
  HomeScreenCategoryState copyWith({
    String? error,
    CategoryStateStatus? status,
    CategoryFeed? categoryFeed,
    Set<int>? expandedCluster,
  }) {
    return HomeScreenCategoryState(
      categoryMap: categoryMap,
      expandedCluster: expandedCluster ?? this.expandedCluster,
      error: error ?? this.error,
      status: status ?? this.status,
      categoryFeed: categoryFeed ?? this.categoryFeed,
    );
  }
}

enum CategoryStateStatus { inital, loading, loaded, error }
