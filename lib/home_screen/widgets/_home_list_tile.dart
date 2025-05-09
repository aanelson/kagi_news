import 'package:flutter/material.dart';
import 'package:kagi_news/details_screen/details_screen.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_cubit.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_state.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key, required this.item, required this.index});
  final HomeScreenListItem item;
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
        child: InkWell(
          onTap: () {
            navigateToDetailsScreen(context, id: item.id, index: index);
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(item.title, style: theme.primaryTextTheme.labelLarge),
              if (item.location.isNotEmpty)
                Flexible(
                  child: Text(
                    item.location,
                    style: theme.primaryTextTheme.bodySmall,
                    overflow: TextOverflow.clip,
                  ),
                ),
              Text('# of articles: ${item.numberOfArticles}'),
              Text('# of websites: ${item.uniqueDomains}'),
              if (isExpanded) ...[],
            ],
          ),
        ),
      ),
    );
  }
}
