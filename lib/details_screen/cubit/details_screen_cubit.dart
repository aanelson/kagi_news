import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kagi_news/api/models/category_feed.dart';

class DetailsCubit extends Cubit<DetailsState> {
  factory DetailsCubit.fromCluster(Clusters cluster) {
    return DetailsCubit(
      DetailsState(
        title: cluster.title ?? 'No title',
        summary: cluster.shortSummary ?? 'No summary',
        didYouKnow: cluster.didYouKnow ?? 'No did you know',
        economicImplications: cluster.economicImplications.toSplitDetails(),
        historicalBackground: cluster.historicalBackground.toString(),
        internationalReactions: cluster.internationalReactions.toSplitDetails(),
      ),
      cluster,
    );
  }

  DetailsCubit(super.initialState, this._cluster);
  final Clusters _cluster;
}

class DetailsState extends Equatable {
  const DetailsState({
    required this.title,
    required this.economicImplications,
    required this.historicalBackground,
    required this.summary,
    required this.didYouKnow,
    required this.internationalReactions,
  });
  final String title;
  final String summary;
  final String didYouKnow;
  final List<SplitDetails> economicImplications;
  final String historicalBackground;
  final List<SplitDetails> internationalReactions;

  @override
  List<Object?> get props => [
    title,
    summary,
    didYouKnow,
    economicImplications,
    historicalBackground,
    internationalReactions,
  ];
}

class SplitDetails extends Equatable {
  static SplitDetails? fromString(String string) {
    if (string.isEmpty) {
      return null;
    }
    final parts = string.split(':');
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
  List<SplitDetails> toSplitDetails() =>
      map(SplitDetails.fromString).whereType<SplitDetails>().toList();
}
