import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/news_categories.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_state.dart';
import 'package:kagi_news/home_screen/widgets/_home_app_bar.dart';

class HomeScreenPage extends StatelessWidget {
  const HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets;
    final status = HomeScreenCubit.select(context, (state) => state.status);
    switch (status) {
      case HomeScreenStateStatus.inital:
        // hacky and gross
        context.read<HomeScreenCubit>().initialLoad();
        continue loading;
      loading:
      case HomeScreenStateStatus.loading:
        widgets = [
          const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          ),
        ];
        break;
      case HomeScreenStateStatus.error:
        widgets = [
          const SliverToBoxAdapter(
            child: Center(child: Text('Error loading data')),
          ),
        ];
        break;

      case HomeScreenStateStatus.loaded:
        widgets = _buildHomeScreenList(context);
        break;
    }

    return Scaffold(
      body: CustomScrollView(slivers: [const HomeAppBar(), ...widgets]),
    );
  }

  List<Widget> _buildHomeScreenList(BuildContext context) {
    final categories = HomeScreenCubit.select(context, (state) {
      return state.displayedCategories;
    });
    return categories.expand((category) {
      return [
        SliverToBoxAdapter(
          child: Container(
            height: 64,
            color: Colors.grey[800],
            child: Center(child: Text(category.name ?? '')),
          ),
        ),
        _HomeScreenList(categoryState: category),
      ];
    }).toList();
  }
}

class _HomeScreenList extends StatelessWidget {
  const _HomeScreenList({super.key, required NewsCategory categoryState})
    : _category = categoryState;
  final NewsCategory _category;
  @override
  Widget build(BuildContext context) {
    final categoryState = HomeScreenCubit.select(
      context,
      (state) => state.categories[_category],
    );
    if (categoryState == null ||
        categoryState.status == HomeScreenStateStatus.error) {
      return SliverToBoxAdapter(
        child: Center(
          child: Column(
            children: [
              Text('Error loading data: ${categoryState?.error}'),
              ElevatedButton(
                onPressed: () {
                  context.read<HomeScreenCubit>().requestCategory(_category);
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }
    if (categoryState.status == HomeScreenStateStatus.loading) {
      return const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }
    final childCount = HomeScreenCubit.select(
      context,
      (state) => categoryState.categoryFeed.clusters.length,
    );
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final clusterData = categoryState.categoryFeed.clusters[index];
        return ListTile(
          title: Text(clusterData.title ?? ''),
          subtitle: Text(clusterData.category ?? ''),
          onTap: () {
            // Handle category tap
          },
        );
      }, childCount: childCount),
    );
  }
}

// class _HomeListSection extends StatelessWidget {
//   const _HomeListSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SliverList(
//       delegate: SliverChildBuilderDelegate(
//         (context, index) {
//           final category = HomeScreenCubit.select(
//             context,
//             (state) => state.listOfCategories!.categories[index],
//           );
//           return ListTile(
//             title: Text(category.name),
//             onTap: () {
//               // Handle category tap
//             },
//           );
//         },
//         childCount: HomeScreenCubit.select(
//           context,
//           (state) => state.listOfCategories!.categories.length,
//         ),
//       ),
//     );
//   }
// }
