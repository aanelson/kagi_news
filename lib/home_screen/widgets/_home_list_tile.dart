import 'package:flutter/material.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_cubit.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key, required this.cluster, required this.index});
  final Clusters cluster;
  final int index;

  @override
  Widget build(BuildContext context) {
    final isExpanded = HomeScreenCategoryCubit.select(context, (state) {
      return state.expandedCluster.contains(index);
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
