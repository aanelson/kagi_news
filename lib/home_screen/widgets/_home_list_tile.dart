import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/api/models/news_categories.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_cubit.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key, required this.cluster, required this.index});
  final Clusters cluster;
  final int index;

  @override
  Widget build(BuildContext context) {
    final provider = context.read<NewsCategory>();
    final isExpanded = HomeScreenCubit.select(context, (state) {
      return state.categories[provider]?.expandedCluster.contains(index) ??
          false;
    });
    final theme = Theme.of(context);
    final constraint =
        isExpanded
            ? const BoxConstraints(minHeight: 100.0, maxHeight: 800.0)
            : const BoxConstraints(minHeight: 100.0, maxHeight: 200.0);
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      constraints: constraint,
      margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cluster.title ?? 'No title',
              style: theme.primaryTextTheme.labelLarge,
            ),
            Flexible(
              child: Text(
                cluster.shortSummary ?? 'No summary',
                style: theme.primaryTextTheme.bodySmall,
                overflow: TextOverflow.clip,
              ),
            ),

            if (isExpanded) ...[],
          ],
        ),
      ),
    );
  }
}
