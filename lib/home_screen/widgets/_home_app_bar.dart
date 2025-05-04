import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: const Text('Kagi News'),
      floating: true,
      pinned: true,
      expandedHeight: 100,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: Builder(
          builder: (context) {
            final isLoaded = HomeScreenCubit.select(
              context,
              (state) => state.isLoaded,
            );

            if (!isLoaded) {
              return const SizedBox.shrink();
            }
            final categories = HomeScreenCubit.select(
              context,
              (state) => state.listOfCategories!.categories,
            );

            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SegmentedButton(
                emptySelectionAllowed: true,
                multiSelectionEnabled: true,
                segments:
                    categories
                        .map(
                          (item) => ButtonSegment(
                            value: item,
                            label: Text(item.name!),
                          ),
                        )
                        .toList(),
                onSelectionChanged: (value) {
                  context.read<HomeScreenCubit>().updateCategorySelection(
                    value,
                  );
                },
                selected: HomeScreenCubit.select(
                  context,
                  (state) => state.selectedCategories,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
