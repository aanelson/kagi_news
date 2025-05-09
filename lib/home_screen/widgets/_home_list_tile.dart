import 'package:flutter/material.dart';
import 'package:kagi_news/details_screen/details_screen_navigation.dart';
import 'package:kagi_news/home_screen/cubit/home_screen_category_state.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({super.key, required this.item, required this.index});
  final HomeScreenListItem item;
  final int index;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
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
              Text(
                item.title,
                style: theme.textTheme.labelLarge,
                key: const Key('title'),
              ),
              if (item.location.isNotEmpty)
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      text: 'Location:  ',
                      children: [
                        TextSpan(
                          text: item.location,
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    style: theme.textTheme.titleSmall,
                    overflow: TextOverflow.clip,
                    key: const Key('location'),
                  ),
                ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 16,
                children: [
                  Text(
                    'Sources: ${item.numberOfArticles}',
                    key: const Key('sources'),
                  ),
                  Text(
                    'Unique websites: ${item.uniqueDomains}',
                    key: const Key('websites'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
