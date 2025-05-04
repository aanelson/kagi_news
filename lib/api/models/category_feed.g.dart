// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_feed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryFeed _$CategoryFeedFromJson(Map<String, dynamic> json) =>
    _CategoryFeed(
      category: json['category'] as String?,
      timestamp: (json['timestamp'] as num?)?.toInt(),
      read: (json['read'] as num?)?.toInt(),
      clusters:
          (json['clusters'] as List<dynamic>?)
              ?.map((e) => Clusters.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CategoryFeedToJson(_CategoryFeed instance) =>
    <String, dynamic>{
      'category': instance.category,
      'timestamp': instance.timestamp,
      'read': instance.read,
      'clusters': instance.clusters,
    };

_Clusters _$ClustersFromJson(Map<String, dynamic> json) => _Clusters(
  clusterNumber: (json['cluster_number'] as num?)?.toInt(),
  uniqueDomains: (json['unique_domains'] as num?)?.toInt(),
  numberOfTitles: (json['number_of_titles'] as num?)?.toInt(),
  category: json['category'] as String?,
  title: json['title'] as String?,
  shortSummary: json['short_summary'] as String?,
  didYouKnow: json['did_you_know'] as String?,
  talkingPoints:
      (json['talking_points'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  quote: json['quote'] as String?,
  quoteAuthor: json['quote_author'] as String?,
  quoteSourceUrl: json['quote_source_url'] as String?,
  quoteSourceDomain: json['quote_source_domain'] as String?,
  location: json['location'] as String?,
  perspectives:
      (json['perspectives'] as List<dynamic>?)
          ?.map((e) => Perspectives.fromJson(e as Map<String, dynamic>))
          .toList(),
  emoji: json['emoji'] as String?,
  geopoliticalContext: json['geopolitical_context'] as String?,
  historicalBackground: json['historical_background'] as String?,
  internationalReactions:
      json['international_reactions'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['international_reactions'],
          ),
  humanitarianImpact:
      json['humanitarian_impact'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['humanitarian_impact'],
          ),
  economicImplications:
      json['economic_implications'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['economic_implications'],
          ),
  timeline:
      (json['timeline'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  futureOutlook:
      (json['future_outlook'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  keyPlayers: json['key_players'] as List<dynamic>? ?? const [],
  technicalDetails:
      json['technical_details'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['technical_details'],
          ),
  businessAngleText: json['business_angle_text'] as String?,
  businessAnglePoints: json['business_angle_points'] as List<dynamic>?,
  userActionItems:
      json['user_action_items'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['user_action_items'],
          ),
  scientificSignificance: json['scientific_significance'] as List<dynamic>?,
  travelAdvisory:
      json['travel_advisory'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(json['travel_advisory']),
  destinationHighlights:
      json['destination_highlights'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['destination_highlights'],
          ),
  culinarySignificance:
      json['culinary_significance'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['culinary_significance'],
          ),
  performanceStatistics: json['performance_statistics'] as List<dynamic>?,
  leagueStandings: json['league_standings'] as String?,
  diyTips:
      json['diy_tips'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(json['diy_tips']),
  designPrinciples:
      json['design_principles'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['design_principles'],
          ),
  userExperienceImpact:
      json['user_experience_impact'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['user_experience_impact'],
          ),
  gameplayMechanics:
      json['gameplay_mechanics'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['gameplay_mechanics'],
          ),
  industryImpact:
      json['industry_impact'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(json['industry_impact']),
  technicalSpecifications:
      json['technical_specifications'] == null
          ? const []
          : const ListEmptyStringConverter().fromJson(
            json['technical_specifications'],
          ),
  articles:
      (json['articles'] as List<dynamic>?)
          ?.map((e) => Articles.fromJson(e as Map<String, dynamic>))
          .toList(),
  domains:
      (json['domains'] as List<dynamic>?)
          ?.map((e) => Domains.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$ClustersToJson(_Clusters instance) => <String, dynamic>{
  'cluster_number': instance.clusterNumber,
  'unique_domains': instance.uniqueDomains,
  'number_of_titles': instance.numberOfTitles,
  'category': instance.category,
  'title': instance.title,
  'short_summary': instance.shortSummary,
  'did_you_know': instance.didYouKnow,
  'talking_points': instance.talkingPoints,
  'quote': instance.quote,
  'quote_author': instance.quoteAuthor,
  'quote_source_url': instance.quoteSourceUrl,
  'quote_source_domain': instance.quoteSourceDomain,
  'location': instance.location,
  'perspectives': instance.perspectives,
  'emoji': instance.emoji,
  'geopolitical_context': instance.geopoliticalContext,
  'historical_background': instance.historicalBackground,
  'international_reactions': const ListEmptyStringConverter().toJson(
    instance.internationalReactions,
  ),
  'humanitarian_impact': const ListEmptyStringConverter().toJson(
    instance.humanitarianImpact,
  ),
  'economic_implications': const ListEmptyStringConverter().toJson(
    instance.economicImplications,
  ),
  'timeline': instance.timeline,
  'future_outlook': instance.futureOutlook,
  'key_players': instance.keyPlayers,
  'technical_details': const ListEmptyStringConverter().toJson(
    instance.technicalDetails,
  ),
  'business_angle_text': instance.businessAngleText,
  'business_angle_points': instance.businessAnglePoints,
  'user_action_items': const ListEmptyStringConverter().toJson(
    instance.userActionItems,
  ),
  'scientific_significance': instance.scientificSignificance,
  'travel_advisory': const ListEmptyStringConverter().toJson(
    instance.travelAdvisory,
  ),
  'destination_highlights': const ListEmptyStringConverter().toJson(
    instance.destinationHighlights,
  ),
  'culinary_significance': const ListEmptyStringConverter().toJson(
    instance.culinarySignificance,
  ),
  'performance_statistics': instance.performanceStatistics,
  'league_standings': instance.leagueStandings,
  'diy_tips': const ListEmptyStringConverter().toJson(instance.diyTips),
  'design_principles': const ListEmptyStringConverter().toJson(
    instance.designPrinciples,
  ),
  'user_experience_impact': const ListEmptyStringConverter().toJson(
    instance.userExperienceImpact,
  ),
  'gameplay_mechanics': const ListEmptyStringConverter().toJson(
    instance.gameplayMechanics,
  ),
  'industry_impact': const ListEmptyStringConverter().toJson(
    instance.industryImpact,
  ),
  'technical_specifications': const ListEmptyStringConverter().toJson(
    instance.technicalSpecifications,
  ),
  'articles': instance.articles,
  'domains': instance.domains,
};

_Domains _$DomainsFromJson(Map<String, dynamic> json) => _Domains(
  name: json['name'] as String?,
  favicon: json['favicon'] as String?,
);

Map<String, dynamic> _$DomainsToJson(_Domains instance) => <String, dynamic>{
  'name': instance.name,
  'favicon': instance.favicon,
};

_Articles _$ArticlesFromJson(Map<String, dynamic> json) => _Articles(
  title: json['title'] as String?,
  link: json['link'] as String?,
  domain: json['domain'] as String?,
  date: json['date'] as String?,
  image: json['image'] as String?,
  imageCaption: json['image_caption'] as String?,
);

Map<String, dynamic> _$ArticlesToJson(_Articles instance) => <String, dynamic>{
  'title': instance.title,
  'link': instance.link,
  'domain': instance.domain,
  'date': instance.date,
  'image': instance.image,
  'image_caption': instance.imageCaption,
};

_Perspectives _$PerspectivesFromJson(Map<String, dynamic> json) =>
    _Perspectives(
      text: json['text'] as String?,
      sources:
          (json['sources'] as List<dynamic>?)
              ?.map((e) => Sources.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$PerspectivesToJson(_Perspectives instance) =>
    <String, dynamic>{'text': instance.text, 'sources': instance.sources};

_Sources _$SourcesFromJson(Map<String, dynamic> json) =>
    _Sources(name: json['name'] as String?, url: json['url'] as String?);

Map<String, dynamic> _$SourcesToJson(_Sources instance) => <String, dynamic>{
  'name': instance.name,
  'url': instance.url,
};
