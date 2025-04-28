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
      (json['international_reactions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  humanitarianImpact: json['humanitarian_impact'] as String?,
  economicImplications: json['economic_implications'] as String?,
  timeline:
      (json['timeline'] as List<dynamic>?)?.map((e) => e as String).toList(),
  futureOutlook: json['future_outlook'] as String?,
  keyPlayers: json['key_players'] as List<dynamic>?,
  technicalDetails: json['technical_details'] as String?,
  businessAngleText: json['business_angle_text'] as String?,
  businessAnglePoints: json['business_angle_points'] as List<dynamic>?,
  userActionItems: json['user_action_items'] as String?,
  scientificSignificance: json['scientific_significance'] as List<dynamic>?,
  travelAdvisory: json['travel_advisory'] as List<dynamic>?,
  destinationHighlights: json['destination_highlights'] as String?,
  culinarySignificance: json['culinary_significance'] as String?,
  performanceStatistics: json['performance_statistics'] as List<dynamic>?,
  leagueStandings: json['league_standings'] as String?,
  diyTips: json['diy_tips'] as String?,
  designPrinciples: json['design_principles'] as String?,
  userExperienceImpact: json['user_experience_impact'] as String?,
  gameplayMechanics: json['gameplay_mechanics'] as List<dynamic>?,
  industryImpact: json['industry_impact'] as List<dynamic>?,
  technicalSpecifications: json['technical_specifications'] as String?,
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
  'international_reactions': instance.internationalReactions,
  'humanitarian_impact': instance.humanitarianImpact,
  'economic_implications': instance.economicImplications,
  'timeline': instance.timeline,
  'future_outlook': instance.futureOutlook,
  'key_players': instance.keyPlayers,
  'technical_details': instance.technicalDetails,
  'business_angle_text': instance.businessAngleText,
  'business_angle_points': instance.businessAnglePoints,
  'user_action_items': instance.userActionItems,
  'scientific_significance': instance.scientificSignificance,
  'travel_advisory': instance.travelAdvisory,
  'destination_highlights': instance.destinationHighlights,
  'culinary_significance': instance.culinarySignificance,
  'performance_statistics': instance.performanceStatistics,
  'league_standings': instance.leagueStandings,
  'diy_tips': instance.diyTips,
  'design_principles': instance.designPrinciples,
  'user_experience_impact': instance.userExperienceImpact,
  'gameplay_mechanics': instance.gameplayMechanics,
  'industry_impact': instance.industryImpact,
  'technical_specifications': instance.technicalSpecifications,
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
