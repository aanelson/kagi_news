import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_cubit.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_state.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_state.dart';
import 'package:kagi_news/home_screen/repository/home_screen_repository.dart';
import 'package:kagi_news/home_screen/widgets/_home_app_bar.dart';
import 'package:kagi_news/home_screen/widgets/_home_list_tile.dart';

class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({super.key});

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  bool _isFirstBuild = true;
  @override
  void didChangeDependencies() {
    if (_isFirstBuild) {
      _isFirstBuild = false;

      Future.delayed(const Duration(seconds: 1)).then((_) {
        if (mounted) {
          context.read<HomeScreenCubit>().requestsCategories();
        }
      });
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> widgets;
    final status = HomeScreenCubit.select(context, (state) => state.status);
    switch (status) {
      case HomeScreenStateStatus.inital:
      case HomeScreenStateStatus.loading:
        widgets = [
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(child: CircularProgressIndicator()),
            ),
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
      body: RefreshIndicator(
        displacement: 70,
        onRefresh: () async {
          context.read<HomeScreenCubit>().refresh();
        },
        child: CustomScrollView(slivers: [const HomeAppBar(), ...widgets]),
      ),
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
            color: Theme.of(context).colorScheme.primary,
            child: Center(
              child: Text(
                category.name,
                style: Theme.of(context).primaryTextTheme.titleLarge,
              ),
            ),
          ),
        ),
        BlocProvider(
          key: ValueKey(category.name),
          create:
              (ctx) => HomeScreenCategoryCubit(
                category: category,
                homeScreenRepository: context.read(),
              )..requestCategory(),
          child: const _HomeScreenList(),
        ),
      ];
    }).toList();
  }
}

class _HomeScreenList extends StatelessWidget {
  const _HomeScreenList();
  @override
  Widget build(BuildContext context) {
    final status = HomeScreenCategoryCubit.select(
      context,
      (state) => state.status,
    );
    if (status == CategoryStateStatus.error) {
      final error = HomeScreenCategoryCubit.select(
        context,
        (state) => state.error,
      );
      return SliverToBoxAdapter(
        child: Center(
          child: Column(
            children: [
              Text('Error loading data: $error'),
              ElevatedButton(
                onPressed: () {
                  context.read<HomeScreenCategoryCubit>().requestCategory();
                },
                child: const Text('Retry'),
              ),
            ],
          ),
        ),
      );
    }
    if (status == CategoryStateStatus.loading) {
      return const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      );
    }
    final data = HomeScreenCategoryCubit.select(
      context,
      (state) => state.items,
    );
    return SliverList(
      delegate: SliverChildBuilderDelegate((context, index) {
        final item = data[index];
        return HomeListTile(item: item, index: index);
      }, childCount: data.length),
    );
  }
}
