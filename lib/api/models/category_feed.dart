import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kagi_news/api/converters/list_empty_string_converter.dart';

part 'category_feed.freezed.dart';
part 'category_feed.g.dart';

@freezed
abstract class CategoryFeed with _$CategoryFeed {
  const factory CategoryFeed({
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'timestamp') int? timestamp,
    @JsonKey(name: 'read') int? read,
    @Default([]) @JsonKey(name: 'clusters') List<Clusters> clusters,
  }) = _CategoryFeed;

  factory CategoryFeed.fromJson(Map<String, Object?> json) =>
      _$CategoryFeedFromJson(json);
}

@freezed
abstract class Clusters with _$Clusters {
  const factory Clusters({
    @JsonKey(name: 'cluster_number') int? clusterNumber,
    @JsonKey(name: 'unique_domains') int? uniqueDomains,
    @JsonKey(name: 'number_of_titles') int? numberOfTitles,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'short_summary') String? shortSummary,
    @JsonKey(name: 'did_you_know') String? didYouKnow,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'talking_points')
    List<String>? talkingPoints,
    @JsonKey(name: 'quote') String? quote,
    @JsonKey(name: 'quote_author') String? quoteAuthor,
    @JsonKey(name: 'quote_source_url') String? quoteSourceUrl,
    @JsonKey(name: 'quote_source_domain') String? quoteSourceDomain,
    @JsonKey(name: 'location') String? location,
    @JsonKey(name: 'perspectives') List<Perspectives>? perspectives,
    @JsonKey(name: 'emoji') String? emoji,
    @JsonKey(name: 'geopolitical_context') String? geopoliticalContext,
    @JsonKey(name: 'historical_background') String? historicalBackground,
    @Default([])
    @JsonKey(name: 'international_reactions')
    @ListEmptyStringConverter()
    List<String> internationalReactions,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'humanitarian_impact')
    List<String> humanitarianImpact,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'economic_implications')
    List<String> economicImplications,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'timeline')
    List<String> timeline,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'future_outlook')
    List<String> futureOutlook,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'key_players')
    List<String> keyPlayers,
    @Default([])
    @ListEmptyStringConverter()
    @JsonKey(name: 'technical_details')
    List<String> technicalDetails,
    @JsonKey(name: 'business_angle_text') String? businessAngleText,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'business_angle_points')
    List<String> businessAnglePoints,
    @Default([])
    @ListEmptyStringConverter()
    @JsonKey(name: 'user_action_items')
    List<String> userActionItems,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'scientific_significance')
    List<String> scientificSignificance,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'travel_advisory')
    List<String> travelAdvisory,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'destination_highlights')
    List<String> destinationHighlights,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'culinary_significance')
    List<String> culinarySignificance,
    @JsonKey(name: 'performance_statistics')
    List<dynamic>? performanceStatistics,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'league_standings')
    List<String> leagueStandings,
    @Default([])
    @ListEmptyStringConverter()
    @JsonKey(name: 'diy_tips')
    List<String> diyTips,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'design_principles')
    List<String> designPrinciples,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'user_experience_impact')
    List<String> userExperienceImpact,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'gameplay_mechanics')
    List<String> gameplayMechanics,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'industry_impact')
    List<String> industryImpact,
    @ListEmptyStringConverter()
    @Default([])
    @JsonKey(name: 'technical_specifications')
    List<String> technicalSpecifications,
    @JsonKey(name: 'articles') List<Articles>? articles,
    @JsonKey(name: 'domains') List<Domains>? domains,
  }) = _Clusters;

  factory Clusters.fromJson(Map<String, Object?> json) =>
      _$ClustersFromJson(json);
}

@freezed
abstract class Domains with _$Domains {
  const factory Domains({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'favicon') String? favicon,
  }) = _Domains;

  factory Domains.fromJson(Map<String, Object?> json) =>
      _$DomainsFromJson(json);
}

@freezed
abstract class Articles with _$Articles {
  const factory Articles({
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'link') String? link,
    @JsonKey(name: 'domain') String? domain,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'image_caption') String? imageCaption,
  }) = _Articles;

  factory Articles.fromJson(Map<String, Object?> json) =>
      _$ArticlesFromJson(json);
}

@freezed
abstract class Perspectives with _$Perspectives {
  const factory Perspectives({
    @JsonKey(name: 'text') String? text,
    @JsonKey(name: 'sources') List<Sources>? sources,
  }) = _Perspectives;

  factory Perspectives.fromJson(Map<String, Object?> json) =>
      _$PerspectivesFromJson(json);
}

@freezed
abstract class Sources with _$Sources {
  const factory Sources({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'url') String? url,
  }) = _Sources;

  factory Sources.fromJson(Map<String, Object?> json) =>
      _$SourcesFromJson(json);
}
