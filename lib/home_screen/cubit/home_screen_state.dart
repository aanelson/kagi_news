import 'package:equatable/equatable.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/news_categories.dart';

enum HomeScreenStateStatus { inital, loading, loaded, error }

class HomeScreenState extends Equatable {
  HomeScreenState.initial()
    : this(
        categories: const {},
        listOfCategories: null,
        status: HomeScreenStateStatus.inital,
        errorMessage: '',
        selectedCategories: {},
        displayedCategories: const [],
      );
  const HomeScreenState({
    required this.categories,
    required this.listOfCategories,
    required this.status,
    required this.errorMessage,
    required this.selectedCategories,
    required this.displayedCategories,
  });
  HomeScreenState copyWith({
    NewsCategories? listOfCategories,
    Map<NewsCategory, CategoryState>? categories,
    HomeScreenStateStatus? status,
    String? errorMessage,
    Set<NewsCategory>? selectedCategories,
    List<NewsCategory>? displayedCategories,
  }) {
    return HomeScreenState(
      displayedCategories: displayedCategories ?? this.displayedCategories,
      selectedCategories: selectedCategories ?? this.selectedCategories,
      categories: categories ?? this.categories,
      listOfCategories: listOfCategories ?? this.listOfCategories,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  bool get isLoaded => status == HomeScreenStateStatus.loaded;
  final NewsCategories? listOfCategories;
  final Map<NewsCategory, CategoryState> categories;
  final List<NewsCategory> displayedCategories;
  final HomeScreenStateStatus status;
  final String errorMessage;

  final Set<NewsCategory> selectedCategories;
  @override
  List<Object?> get props => [
    categories,
    listOfCategories,
    status,
    errorMessage,
    selectedCategories,
    displayedCategories,
  ];
}

class CategoryState extends Equatable {
  const CategoryState({
    required this.categoryName,
    this.error,
    this.categoryFeed = const CategoryFeed(),
    this.status = HomeScreenStateStatus.inital,
    this.expandedCluster = const {},
  });

  final String? error;
  bool get isLoaded => status == HomeScreenStateStatus.loaded;
  final HomeScreenStateStatus status;
  final CategoryFeed categoryFeed;
  final String categoryName;
  final Set<int> expandedCluster;
  @override
  List<Object?> get props => [
    error,
    categoryFeed,
    status,
    categoryName,
    expandedCluster,
  ];
  CategoryState copyWith({
    String? error,
    HomeScreenStateStatus? status,
    CategoryFeed? categoryFeed,
    Set<int>? expandedCluster,
  }) {
    return CategoryState(
      expandedCluster: expandedCluster ?? this.expandedCluster,
      categoryName: categoryName,
      error: error ?? this.error,
      status: status ?? this.status,
      categoryFeed: categoryFeed ?? this.categoryFeed,
    );
  }
}
