import 'package:flutter/material.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/details_screen/cubit/details_screen_cubit.dart';
import 'package:kagi_news/details_screen/horizontal_scroll_list.dart';

class ClusterPage extends StatelessWidget {
  final Clusters cluster;

  const ClusterPage({Key? key, required this.cluster}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final image =
        cluster.articles?.firstWhere((item) => item.image != null).image;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          cluster.title!,
        ), // Assuming `title` is a property of `Cluster`
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cluster.title ?? 'No title',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                if (image != null)
                  Image.network(
                    image,
                    fit: BoxFit.cover,
                    height: 200,
                    width: double.infinity,
                  ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    cluster.shortSummary ?? 'No summary',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
                HorizontalAnimatingScrollView.splitDetails(
                  list: cluster.economicImplications.toSplitDetails(),
                  title: 'Economic Implications',
                ),
                HorizontalAnimatingScrollView.splitDetails(
                  list: cluster.businessAnglePoints.toSplitDetails(),
                  title: 'Business Angle Points',
                ),
                HorizontalAnimatingScrollView.splitDetails(
                  list: cluster.designPrinciples.toSplitDetails(),
                  title: 'Design Principles',
                ),
                _SourcesList(articles: cluster.articles ?? []),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Navigation example from HomeListTile
void navigateToDetailsScreen(BuildContext context, Clusters cluster) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => ClusterPage(cluster: cluster)),
  );
}

class _SourcesList extends StatelessWidget {
  const _SourcesList({super.key, required this.articles});
  final List<Articles> articles;
  @override
  Widget build(BuildContext context) {
    if (articles.isEmpty) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 220, // Card height
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sources',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: articles.length,
              itemBuilder: (context, index) {
                final article = articles[index];
                return ListTile(
                  title: Text(article.title ?? 'No title'),
                  subtitle: Text(article.domain ?? 'No summary'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
