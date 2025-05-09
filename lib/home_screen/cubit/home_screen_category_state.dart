import 'package:equatable/equatable.dart';
import 'package:kagi_news/api/models/request_id.dart';
import 'package:kagi_news/api/models/url_category_map.dart';

class HomeScreenCategoryState extends Equatable {
  const HomeScreenCategoryState({
    required this.categoryMap,
    this.error,
    this.status = CategoryStateStatus.inital,
    this.expandedCluster = const {},
    this.items = const [],
  });
  final UrlCategoryMap categoryMap;

  final String? error;
  bool get isLoaded => status == CategoryStateStatus.loaded;
  final CategoryStateStatus status;
  final Set<int> expandedCluster;
  final List<HomeScreenListItem> items;
  @override
  List<Object?> get props => [
    error,
    status,
    expandedCluster,
    items,
    categoryMap,
  ];
  HomeScreenCategoryState copyWith({
    String? error,
    List<HomeScreenListItem>? items,
    CategoryStateStatus? status,
    Set<int>? expandedCluster,
  }) {
    return HomeScreenCategoryState(
      items: items ?? this.items,
      categoryMap: categoryMap,
      expandedCluster: expandedCluster ?? this.expandedCluster,
      error: error ?? this.error,
      status: status ?? this.status,
    );
  }
}

enum CategoryStateStatus { inital, loading, loaded, error }

class HomeScreenListItem extends Equatable {
  const HomeScreenListItem({
    required this.title,
    required this.numberOfArticles,
    required this.uniqueDomains,
    required this.location,
    required this.id,
  });
  final String title;
  final int numberOfArticles;
  final int uniqueDomains;
  final String location;
  final RequestId id;

  @override
  List<Object?> get props => [title, numberOfArticles, uniqueDomains, location];

  HomeScreenListItem copyWith({
    String? title,
    int? numberOfArticles,
    int? uniqueDomains,
    String? location,
  }) {
    return HomeScreenListItem(
      id: id,
      title: title ?? this.title,
      numberOfArticles: numberOfArticles ?? this.numberOfArticles,
      uniqueDomains: uniqueDomains ?? this.uniqueDomains,
      location: location ?? this.location,
    );
  }
}
