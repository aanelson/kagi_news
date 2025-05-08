import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
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
        colorSeed: Color.fromARGB(255, 254, 178, 25),
      );
  const HomeScreenState({
    required this.listOfCategories,
    required this.status,
    required this.errorMessage,
    required this.selectedCategories,
    required this.displayedCategories,
    required this.colorSeed,
  });
  HomeScreenState copyWith({
    List<UrlCategoryMap>? listOfCategories,
    HomeScreenStateStatus? status,
    String? errorMessage,
    Set<UrlCategoryMap>? selectedCategories,
    Color? colorSeed,
    List<UrlCategoryMap>? displayedCategories,
  }) {
    return HomeScreenState(
      displayedCategories: displayedCategories ?? this.displayedCategories,
      selectedCategories: selectedCategories ?? this.selectedCategories,
      listOfCategories: listOfCategories ?? this.listOfCategories,
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
      colorSeed: colorSeed ?? this.colorSeed,
    );
  }

  bool get isLoaded => status == HomeScreenStateStatus.loaded;
  final List<UrlCategoryMap> listOfCategories;
  final List<UrlCategoryMap> displayedCategories;
  final HomeScreenStateStatus status;
  final String errorMessage;
  final Color colorSeed;

  final Set<UrlCategoryMap> selectedCategories;
  @override
  List<Object?> get props => [
    listOfCategories,
    colorSeed,
    status,
    errorMessage,
    selectedCategories,
    displayedCategories,
  ];
}
