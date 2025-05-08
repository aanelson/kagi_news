import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/category_feed.dart';

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

class DetailsState extends Equatable {
  const DetailsState({
    required this.businessAnglePoints,
    required this.title,
    required this.economicImplications,
    required this.historicalBackground,
    required this.summary,
    required this.designPrinciples,
    required this.didYouKnow,
    required this.sources,
    required this.internationalReactions,
    required this.images,
    required this.timeline,
    required this.talkingPoints,
  });
  final String title;
  final List<String> images;
  final String summary;
  final String? didYouKnow;
  final List<SplitDetails> economicImplications;
  final String historicalBackground;
  final List<SplitDetails> internationalReactions;
  final List<SplitDetails> businessAnglePoints;
  final List<SplitDetails> designPrinciples;
  final List<SplitDetails> talkingPoints;
  final List<Source> sources;
  final List<SplitDetails> timeline;

  @override
  List<Object?> get props => [
    title,
    images,
    talkingPoints,
    timeline,
    summary,
    designPrinciples,
    didYouKnow,
    economicImplications,
    sources,
    historicalBackground,
    internationalReactions,
    businessAnglePoints,
  ];
}

class SplitDetails extends Equatable {
  static SplitDetails? fromString(String string, [String separator = ':']) {
    if (string.isEmpty) {
      return null;
    }
    final parts = string.split(separator);
    if (parts.length != 2) {
      return null;
    }
    return SplitDetails(title: parts[0], summary: parts[1]);
  }

  final String title;
  final String summary;

  const SplitDetails({required this.title, required this.summary});

  @override
  List<Object?> get props => [title, summary];
}

extension Converter on List<String> {
  List<SplitDetails> toSplitDetails([String separator = ':']) =>
      map(
        (e) => SplitDetails.fromString(e, separator),
      ).whereType<SplitDetails>().toList();
}

class Source extends Equatable {
  static Source? fromArticle(Articles article, String? url) {
    if (article.domain == null ||
        article.title == null ||
        article.link == null) {
      return null;
    }
    return Source(
      domain: article.domain!,
      title: article.title!,
      faviconUrl: url ?? '',
      articleUrl: article.link!,
    );
  }

  const Source({
    required this.domain,
    required this.title,
    required this.faviconUrl,
    required this.articleUrl,
  });
  final String domain;
  final String title;
  final String faviconUrl;
  final String articleUrl;

  @override
  List<Object?> get props => [domain, title, faviconUrl, articleUrl];
}
