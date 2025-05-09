import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/category_feed.dart';
import 'package:kagi_news/details_screen/cubit/details_screen_state.dart';

class DetailsCubit extends Cubit<DetailsState> {
  factory DetailsCubit.fromCluster(Clusters cluster) {
    final domains = <String, String>{
      for (final e in cluster.domains ?? []) e.name ?? '': e.favicon ?? '',
    };
    final internationalReactions =
        cluster.internationalReactions
            .map((item) => item.split(':'))
            .where((item) => item.length == 2)
            .map((item) {
              final newTitle = item[0].split(' ');
              return SplitDetails(title: newTitle.last, summary: item[1]);
            })
            .whereType<SplitDetails>()
            .toList();
    return DetailsCubit(
      DetailsState(
        title: cluster.title ?? 'No title',
        summary: cluster.shortSummary ?? 'No summary',
        didYouKnow: cluster.didYouKnow,
        images:
            cluster.articles
                ?.map((item) => item.image)
                .whereType<String>()
                .toList() ??
            [],
        economicImplications: cluster.economicImplications.toSplitDetails(),
        historicalBackground: cluster.historicalBackground.toString(),
        internationalReactions: internationalReactions,
        businessAnglePoints: cluster.businessAnglePoints.toSplitDetails(),
        designPrinciples: cluster.designPrinciples.toSplitDetails(),
        location: cluster.location ?? '',
        timeline: cluster.timeline.toSplitDetails('::'),
        talkingPoints: cluster.talkingPoints?.toSplitDetails() ?? [],
        sources:
            cluster.articles
                ?.map(
                  (article) =>
                      Source.fromArticle(article, domains[article.domain]),
                )
                .whereType<Source>()
                .toList() ??
            [],
      ),
    );
  }
  static R select<R>(
    BuildContext context,
    R Function(DetailsState state) find,
  ) => context.select<DetailsCubit, R>((value) => find(value.state));

  DetailsCubit(super.initialState);
}
