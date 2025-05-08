import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/details_screen/cubit/details_screen_cubit.dart';
import 'package:kagi_news/details_screen/horizontal_scroll_list.dart';

class ClusterPage extends StatelessWidget {
  const ClusterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final text = Text(
      DetailsCubit.select(context, (state) => state.title),
      style: Theme.of(context).textTheme.titleLarge,
    );
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        // top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              title: text,
              pinned: true,
              titleTextStyle: theme.textTheme.titleLarge,
              flexibleSpace: FlexibleSpaceBar(background: const _Image()),
              expandedHeight: 400,
              leading: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,

                  color: theme.colorScheme.surfaceContainerHighest,
                ),
                child: BackButton(),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(8.0),
              sliver: SliverToBoxAdapter(
                child: Opacity(opacity: 1, child: Center(child: text)),
              ),
            ),

            const _Body(),
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 4,
                      horizontal: 8,
                    ),
                    child: Text('Sources'),
                  ),
                  const Divider(),
                ],
              ),
            ),
            const _Sources(),
          ],
        ),
      ),
    );
  }
}

// Navigation example from HomeListTile
void navigateToDetailsScreen(BuildContext context, Clusters cluster) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder:
          (context) => BlocProvider(
            create: (context) => DetailsCubit.fromCluster(cluster),
            child: const ClusterPage(),
          ),
    ),
  );
}

class _Body extends StatelessWidget {
  const _Body();
  @override
  Widget build(BuildContext context) {
    final image = DetailsCubit.select(
      context,
      (state) => state.images.firstOrNull,
    );
    final historicalBackground = DetailsCubit.select(
      context,
      (state) => state.historicalBackground,
    );
    return SliverList.list(
      children: [
        // if (image != null)
        //   Image.network(
        //     image,
        //     loadingBuilder:
        //         (context, child, loadingProgress) =>
        //             loadingProgress == null
        //                 ? child
        //                 : const Center(child: CircularProgressIndicator()),
        //     fit: BoxFit.cover,
        //     height: 200,
        //     width: double.infinity,
        //   ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            DetailsCubit.select(context, (state) => state.summary),
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),

        HorizontalAnimatingScrollView.splitDetails(
          list: DetailsCubit.select(
            context,
            (state) => state.economicImplications,
          ),
          title: 'Economic Implications',
        ),
        HorizontalAnimatingScrollView.splitDetails(
          list: DetailsCubit.select(
            context,
            (state) => state.businessAnglePoints,
          ),
          title: 'Business Angle',
        ),
        HorizontalAnimatingScrollView.splitDetails(
          list: DetailsCubit.select(
            context,
            (state) => state.internationalReactions,
          ),
          title: 'International Reactions',
        ),
        HorizontalAnimatingScrollView.splitDetails(
          list: DetailsCubit.select(context, (state) => state.designPrinciples),
          title: 'Design Principles',
        ),
        HorizontalAnimatingScrollView.splitDetails(
          list: DetailsCubit.select(context, (state) => state.talkingPoints),
          title: 'Talking Points',
        ),
        if (historicalBackground.isNotEmpty) ...[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Historical Background',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              historicalBackground,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ],
    );
  }
}

class _Image extends StatelessWidget {
  const _Image();

  @override
  Widget build(BuildContext context) {
    final imageUrl = DetailsCubit.select(
      context,
      (state) => state.images.firstOrNull,
    );
    if (imageUrl == null) {
      return const SizedBox.shrink();
    }
    return Image.network(
      imageUrl,
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) return child;
        return const Center(child: CircularProgressIndicator());
      },
      fit: BoxFit.cover,
      height: 200,
      width: double.infinity,
    );
  }
}

class _Sources extends StatelessWidget {
  const _Sources();

  @override
  Widget build(BuildContext context) {
    final sources = DetailsCubit.select(context, (state) => state.sources);

    return SliverList.separated(
      separatorBuilder: (context, index) => const Divider(),
      itemCount: sources.length,
      itemBuilder: (context, index) {
        final article = sources[index];
        return ListTile(
          title: Text(article.title),
          subtitle: Row(
            spacing: 4,
            children: [
              if (article.faviconUrl.isNotEmpty)
                Image.network(article.faviconUrl),
              Text(article.domain),
            ],
          ),
        );
      },
    );
  }
}
