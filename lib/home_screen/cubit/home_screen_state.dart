import 'package:equatable/equatable.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/url_category_map.dart';

enum HomeScreenStateStatus { inital, loading, loaded, error }

class HomeScreenState extends Equatable {
  HomeScreenState.initial()
    : this(
        listOfCategories: const [],
        status: HomeScreenStateStatus.inital,
        errorMessage: '',
        selectedCategories: {},
        displayedCategories: const [],
      );
  const HomeScreenState({
    required this.listOfCategories,
    required this.status,
    required this.errorMessage,
    required this.selectedCategories,
    required this.displayedCategories,
  });
  HomeScreenState copyWith({
    List<UrlCategoryMap>? listOfCategories,
    HomeScreenStateStatus? status,
    String? errorMessage,
    Set<UrlCategoryMap>? selectedCategories,

    List<UrlCategoryMap>? displayedCategories,
  }) {
    return HomeScreenState(
      displayedCategories: displayedCategories ?? this.displayedCategories,
      selectedCategories: selectedCategories ?? this.selectedCategories,
      listOfCategories: listOfCategories ?? this.listOfCategories,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  bool get isLoaded => status == HomeScreenStateStatus.loaded;
  final List<UrlCategoryMap> listOfCategories;
  final List<UrlCategoryMap> displayedCategories;
  final HomeScreenStateStatus status;
  final String errorMessage;

  final Set<UrlCategoryMap> selectedCategories;
  @override
  List<Object?> get props => [
    listOfCategories,
    status,
    errorMessage,
    selectedCategories,
    displayedCategories,
  ];
}

class CategoryState extends Equatable {
  const CategoryState({
    required this.name,
    required this.categoryMap,
    this.error,
    this.categoryFeed = const CategoryFeed(),
    this.status = HomeScreenStateStatus.inital,
    this.expandedCluster = const {},
  });
  final UrlCategoryMap categoryMap;

  final String? error;
  bool get isLoaded => status == HomeScreenStateStatus.loaded;
  final HomeScreenStateStatus status;
  final CategoryFeed categoryFeed;
  final String name;
  final Set<int> expandedCluster;
  @override
  List<Object?> get props => [
    error,
    categoryFeed,
    status,
    name,
    expandedCluster,
  ];
  CategoryState copyWith({
    String? error,
    HomeScreenStateStatus? status,
    CategoryFeed? categoryFeed,
    Set<int>? expandedCluster,
  }) {
    return CategoryState(
      categoryMap: categoryMap,
      expandedCluster: expandedCluster ?? this.expandedCluster,
      name: name,
      error: error ?? this.error,
      status: status ?? this.status,
      categoryFeed: categoryFeed ?? this.categoryFeed,
    );
  }
}
