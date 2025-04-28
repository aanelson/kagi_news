// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_feed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CategoryFeed {

@JsonKey(name: 'category') String? get category;@JsonKey(name: 'timestamp') int? get timestamp;@JsonKey(name: 'read') int? get read;@JsonKey(name: 'clusters') List<Clusters> get clusters;
/// Create a copy of CategoryFeed
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CategoryFeedCopyWith<CategoryFeed> get copyWith => _$CategoryFeedCopyWithImpl<CategoryFeed>(this as CategoryFeed, _$identity);

  /// Serializes this CategoryFeed to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryFeed&&(identical(other.category, category) || other.category == category)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.read, read) || other.read == read)&&const DeepCollectionEquality().equals(other.clusters, clusters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,timestamp,read,const DeepCollectionEquality().hash(clusters));

@override
String toString() {
  return 'CategoryFeed(category: $category, timestamp: $timestamp, read: $read, clusters: $clusters)';
}


}

/// @nodoc
abstract mixin class $CategoryFeedCopyWith<$Res>  {
  factory $CategoryFeedCopyWith(CategoryFeed value, $Res Function(CategoryFeed) _then) = _$CategoryFeedCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'category') String? category,@JsonKey(name: 'timestamp') int? timestamp,@JsonKey(name: 'read') int? read,@JsonKey(name: 'clusters') List<Clusters> clusters
});




}
/// @nodoc
class _$CategoryFeedCopyWithImpl<$Res>
    implements $CategoryFeedCopyWith<$Res> {
  _$CategoryFeedCopyWithImpl(this._self, this._then);

  final CategoryFeed _self;
  final $Res Function(CategoryFeed) _then;

/// Create a copy of CategoryFeed
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? category = freezed,Object? timestamp = freezed,Object? read = freezed,Object? clusters = null,}) {
  return _then(_self.copyWith(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as int?,clusters: null == clusters ? _self.clusters : clusters // ignore: cast_nullable_to_non_nullable
as List<Clusters>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _CategoryFeed implements CategoryFeed {
  const _CategoryFeed({@JsonKey(name: 'category') this.category, @JsonKey(name: 'timestamp') this.timestamp, @JsonKey(name: 'read') this.read, @JsonKey(name: 'clusters') final  List<Clusters> clusters = const []}): _clusters = clusters;
  factory _CategoryFeed.fromJson(Map<String, dynamic> json) => _$CategoryFeedFromJson(json);

@override@JsonKey(name: 'category') final  String? category;
@override@JsonKey(name: 'timestamp') final  int? timestamp;
@override@JsonKey(name: 'read') final  int? read;
 final  List<Clusters> _clusters;
@override@JsonKey(name: 'clusters') List<Clusters> get clusters {
  if (_clusters is EqualUnmodifiableListView) return _clusters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_clusters);
}


/// Create a copy of CategoryFeed
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CategoryFeedCopyWith<_CategoryFeed> get copyWith => __$CategoryFeedCopyWithImpl<_CategoryFeed>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CategoryFeedToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CategoryFeed&&(identical(other.category, category) || other.category == category)&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&(identical(other.read, read) || other.read == read)&&const DeepCollectionEquality().equals(other._clusters, _clusters));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,category,timestamp,read,const DeepCollectionEquality().hash(_clusters));

@override
String toString() {
  return 'CategoryFeed(category: $category, timestamp: $timestamp, read: $read, clusters: $clusters)';
}


}

/// @nodoc
abstract mixin class _$CategoryFeedCopyWith<$Res> implements $CategoryFeedCopyWith<$Res> {
  factory _$CategoryFeedCopyWith(_CategoryFeed value, $Res Function(_CategoryFeed) _then) = __$CategoryFeedCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'category') String? category,@JsonKey(name: 'timestamp') int? timestamp,@JsonKey(name: 'read') int? read,@JsonKey(name: 'clusters') List<Clusters> clusters
});




}
/// @nodoc
class __$CategoryFeedCopyWithImpl<$Res>
    implements _$CategoryFeedCopyWith<$Res> {
  __$CategoryFeedCopyWithImpl(this._self, this._then);

  final _CategoryFeed _self;
  final $Res Function(_CategoryFeed) _then;

/// Create a copy of CategoryFeed
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? category = freezed,Object? timestamp = freezed,Object? read = freezed,Object? clusters = null,}) {
  return _then(_CategoryFeed(
category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,read: freezed == read ? _self.read : read // ignore: cast_nullable_to_non_nullable
as int?,clusters: null == clusters ? _self._clusters : clusters // ignore: cast_nullable_to_non_nullable
as List<Clusters>,
  ));
}


}


/// @nodoc
mixin _$Clusters {

@JsonKey(name: 'cluster_number') int? get clusterNumber;@JsonKey(name: 'unique_domains') int? get uniqueDomains;@JsonKey(name: 'number_of_titles') int? get numberOfTitles;@JsonKey(name: 'category') String? get category;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'short_summary') String? get shortSummary;@JsonKey(name: 'did_you_know') String? get didYouKnow;@JsonKey(name: 'talking_points') List<String>? get talkingPoints;@JsonKey(name: 'quote') String? get quote;@JsonKey(name: 'quote_author') String? get quoteAuthor;@JsonKey(name: 'quote_source_url') String? get quoteSourceUrl;@JsonKey(name: 'quote_source_domain') String? get quoteSourceDomain;@JsonKey(name: 'location') String? get location;@JsonKey(name: 'perspectives') List<Perspectives>? get perspectives;@JsonKey(name: 'emoji') String? get emoji;@JsonKey(name: 'geopolitical_context') String? get geopoliticalContext;@JsonKey(name: 'historical_background') String? get historicalBackground;@JsonKey(name: 'international_reactions') List<String> get internationalReactions;@JsonKey(name: 'humanitarian_impact') String? get humanitarianImpact;@JsonKey(name: 'economic_implications') String? get economicImplications;@JsonKey(name: 'timeline') List<String>? get timeline;@JsonKey(name: 'future_outlook') String? get futureOutlook;@JsonKey(name: 'key_players') List<dynamic>? get keyPlayers;@JsonKey(name: 'technical_details') String? get technicalDetails;@JsonKey(name: 'business_angle_text') String? get businessAngleText;@JsonKey(name: 'business_angle_points') List<dynamic>? get businessAnglePoints;@JsonKey(name: 'user_action_items') String? get userActionItems;@JsonKey(name: 'scientific_significance') List<dynamic>? get scientificSignificance;@JsonKey(name: 'travel_advisory') List<dynamic>? get travelAdvisory;@JsonKey(name: 'destination_highlights') String? get destinationHighlights;@JsonKey(name: 'culinary_significance') String? get culinarySignificance;@JsonKey(name: 'performance_statistics') List<dynamic>? get performanceStatistics;@JsonKey(name: 'league_standings') String? get leagueStandings;@JsonKey(name: 'diy_tips') String? get diyTips;@JsonKey(name: 'design_principles') String? get designPrinciples;@JsonKey(name: 'user_experience_impact') String? get userExperienceImpact;@JsonKey(name: 'gameplay_mechanics') List<dynamic>? get gameplayMechanics;@JsonKey(name: 'industry_impact') List<dynamic>? get industryImpact;@JsonKey(name: 'technical_specifications') String? get technicalSpecifications;@JsonKey(name: 'articles') List<Articles>? get articles;@JsonKey(name: 'domains') List<Domains>? get domains;
/// Create a copy of Clusters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClustersCopyWith<Clusters> get copyWith => _$ClustersCopyWithImpl<Clusters>(this as Clusters, _$identity);

  /// Serializes this Clusters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Clusters&&(identical(other.clusterNumber, clusterNumber) || other.clusterNumber == clusterNumber)&&(identical(other.uniqueDomains, uniqueDomains) || other.uniqueDomains == uniqueDomains)&&(identical(other.numberOfTitles, numberOfTitles) || other.numberOfTitles == numberOfTitles)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortSummary, shortSummary) || other.shortSummary == shortSummary)&&(identical(other.didYouKnow, didYouKnow) || other.didYouKnow == didYouKnow)&&const DeepCollectionEquality().equals(other.talkingPoints, talkingPoints)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.quoteAuthor, quoteAuthor) || other.quoteAuthor == quoteAuthor)&&(identical(other.quoteSourceUrl, quoteSourceUrl) || other.quoteSourceUrl == quoteSourceUrl)&&(identical(other.quoteSourceDomain, quoteSourceDomain) || other.quoteSourceDomain == quoteSourceDomain)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.perspectives, perspectives)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.geopoliticalContext, geopoliticalContext) || other.geopoliticalContext == geopoliticalContext)&&(identical(other.historicalBackground, historicalBackground) || other.historicalBackground == historicalBackground)&&const DeepCollectionEquality().equals(other.internationalReactions, internationalReactions)&&(identical(other.humanitarianImpact, humanitarianImpact) || other.humanitarianImpact == humanitarianImpact)&&(identical(other.economicImplications, economicImplications) || other.economicImplications == economicImplications)&&const DeepCollectionEquality().equals(other.timeline, timeline)&&(identical(other.futureOutlook, futureOutlook) || other.futureOutlook == futureOutlook)&&const DeepCollectionEquality().equals(other.keyPlayers, keyPlayers)&&(identical(other.technicalDetails, technicalDetails) || other.technicalDetails == technicalDetails)&&(identical(other.businessAngleText, businessAngleText) || other.businessAngleText == businessAngleText)&&const DeepCollectionEquality().equals(other.businessAnglePoints, businessAnglePoints)&&(identical(other.userActionItems, userActionItems) || other.userActionItems == userActionItems)&&const DeepCollectionEquality().equals(other.scientificSignificance, scientificSignificance)&&const DeepCollectionEquality().equals(other.travelAdvisory, travelAdvisory)&&(identical(other.destinationHighlights, destinationHighlights) || other.destinationHighlights == destinationHighlights)&&(identical(other.culinarySignificance, culinarySignificance) || other.culinarySignificance == culinarySignificance)&&const DeepCollectionEquality().equals(other.performanceStatistics, performanceStatistics)&&(identical(other.leagueStandings, leagueStandings) || other.leagueStandings == leagueStandings)&&(identical(other.diyTips, diyTips) || other.diyTips == diyTips)&&(identical(other.designPrinciples, designPrinciples) || other.designPrinciples == designPrinciples)&&(identical(other.userExperienceImpact, userExperienceImpact) || other.userExperienceImpact == userExperienceImpact)&&const DeepCollectionEquality().equals(other.gameplayMechanics, gameplayMechanics)&&const DeepCollectionEquality().equals(other.industryImpact, industryImpact)&&(identical(other.technicalSpecifications, technicalSpecifications) || other.technicalSpecifications == technicalSpecifications)&&const DeepCollectionEquality().equals(other.articles, articles)&&const DeepCollectionEquality().equals(other.domains, domains));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,clusterNumber,uniqueDomains,numberOfTitles,category,title,shortSummary,didYouKnow,const DeepCollectionEquality().hash(talkingPoints),quote,quoteAuthor,quoteSourceUrl,quoteSourceDomain,location,const DeepCollectionEquality().hash(perspectives),emoji,geopoliticalContext,historicalBackground,const DeepCollectionEquality().hash(internationalReactions),humanitarianImpact,economicImplications,const DeepCollectionEquality().hash(timeline),futureOutlook,const DeepCollectionEquality().hash(keyPlayers),technicalDetails,businessAngleText,const DeepCollectionEquality().hash(businessAnglePoints),userActionItems,const DeepCollectionEquality().hash(scientificSignificance),const DeepCollectionEquality().hash(travelAdvisory),destinationHighlights,culinarySignificance,const DeepCollectionEquality().hash(performanceStatistics),leagueStandings,diyTips,designPrinciples,userExperienceImpact,const DeepCollectionEquality().hash(gameplayMechanics),const DeepCollectionEquality().hash(industryImpact),technicalSpecifications,const DeepCollectionEquality().hash(articles),const DeepCollectionEquality().hash(domains)]);

@override
String toString() {
  return 'Clusters(clusterNumber: $clusterNumber, uniqueDomains: $uniqueDomains, numberOfTitles: $numberOfTitles, category: $category, title: $title, shortSummary: $shortSummary, didYouKnow: $didYouKnow, talkingPoints: $talkingPoints, quote: $quote, quoteAuthor: $quoteAuthor, quoteSourceUrl: $quoteSourceUrl, quoteSourceDomain: $quoteSourceDomain, location: $location, perspectives: $perspectives, emoji: $emoji, geopoliticalContext: $geopoliticalContext, historicalBackground: $historicalBackground, internationalReactions: $internationalReactions, humanitarianImpact: $humanitarianImpact, economicImplications: $economicImplications, timeline: $timeline, futureOutlook: $futureOutlook, keyPlayers: $keyPlayers, technicalDetails: $technicalDetails, businessAngleText: $businessAngleText, businessAnglePoints: $businessAnglePoints, userActionItems: $userActionItems, scientificSignificance: $scientificSignificance, travelAdvisory: $travelAdvisory, destinationHighlights: $destinationHighlights, culinarySignificance: $culinarySignificance, performanceStatistics: $performanceStatistics, leagueStandings: $leagueStandings, diyTips: $diyTips, designPrinciples: $designPrinciples, userExperienceImpact: $userExperienceImpact, gameplayMechanics: $gameplayMechanics, industryImpact: $industryImpact, technicalSpecifications: $technicalSpecifications, articles: $articles, domains: $domains)';
}


}

/// @nodoc
abstract mixin class $ClustersCopyWith<$Res>  {
  factory $ClustersCopyWith(Clusters value, $Res Function(Clusters) _then) = _$ClustersCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'cluster_number') int? clusterNumber,@JsonKey(name: 'unique_domains') int? uniqueDomains,@JsonKey(name: 'number_of_titles') int? numberOfTitles,@JsonKey(name: 'category') String? category,@JsonKey(name: 'title') String? title,@JsonKey(name: 'short_summary') String? shortSummary,@JsonKey(name: 'did_you_know') String? didYouKnow,@JsonKey(name: 'talking_points') List<String>? talkingPoints,@JsonKey(name: 'quote') String? quote,@JsonKey(name: 'quote_author') String? quoteAuthor,@JsonKey(name: 'quote_source_url') String? quoteSourceUrl,@JsonKey(name: 'quote_source_domain') String? quoteSourceDomain,@JsonKey(name: 'location') String? location,@JsonKey(name: 'perspectives') List<Perspectives>? perspectives,@JsonKey(name: 'emoji') String? emoji,@JsonKey(name: 'geopolitical_context') String? geopoliticalContext,@JsonKey(name: 'historical_background') String? historicalBackground,@JsonKey(name: 'international_reactions') List<String> internationalReactions,@JsonKey(name: 'humanitarian_impact') String? humanitarianImpact,@JsonKey(name: 'economic_implications') String? economicImplications,@JsonKey(name: 'timeline') List<String>? timeline,@JsonKey(name: 'future_outlook') String? futureOutlook,@JsonKey(name: 'key_players') List<dynamic>? keyPlayers,@JsonKey(name: 'technical_details') String? technicalDetails,@JsonKey(name: 'business_angle_text') String? businessAngleText,@JsonKey(name: 'business_angle_points') List<dynamic>? businessAnglePoints,@JsonKey(name: 'user_action_items') String? userActionItems,@JsonKey(name: 'scientific_significance') List<dynamic>? scientificSignificance,@JsonKey(name: 'travel_advisory') List<dynamic>? travelAdvisory,@JsonKey(name: 'destination_highlights') String? destinationHighlights,@JsonKey(name: 'culinary_significance') String? culinarySignificance,@JsonKey(name: 'performance_statistics') List<dynamic>? performanceStatistics,@JsonKey(name: 'league_standings') String? leagueStandings,@JsonKey(name: 'diy_tips') String? diyTips,@JsonKey(name: 'design_principles') String? designPrinciples,@JsonKey(name: 'user_experience_impact') String? userExperienceImpact,@JsonKey(name: 'gameplay_mechanics') List<dynamic>? gameplayMechanics,@JsonKey(name: 'industry_impact') List<dynamic>? industryImpact,@JsonKey(name: 'technical_specifications') String? technicalSpecifications,@JsonKey(name: 'articles') List<Articles>? articles,@JsonKey(name: 'domains') List<Domains>? domains
});




}
/// @nodoc
class _$ClustersCopyWithImpl<$Res>
    implements $ClustersCopyWith<$Res> {
  _$ClustersCopyWithImpl(this._self, this._then);

  final Clusters _self;
  final $Res Function(Clusters) _then;

/// Create a copy of Clusters
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clusterNumber = freezed,Object? uniqueDomains = freezed,Object? numberOfTitles = freezed,Object? category = freezed,Object? title = freezed,Object? shortSummary = freezed,Object? didYouKnow = freezed,Object? talkingPoints = freezed,Object? quote = freezed,Object? quoteAuthor = freezed,Object? quoteSourceUrl = freezed,Object? quoteSourceDomain = freezed,Object? location = freezed,Object? perspectives = freezed,Object? emoji = freezed,Object? geopoliticalContext = freezed,Object? historicalBackground = freezed,Object? internationalReactions = null,Object? humanitarianImpact = freezed,Object? economicImplications = freezed,Object? timeline = freezed,Object? futureOutlook = freezed,Object? keyPlayers = freezed,Object? technicalDetails = freezed,Object? businessAngleText = freezed,Object? businessAnglePoints = freezed,Object? userActionItems = freezed,Object? scientificSignificance = freezed,Object? travelAdvisory = freezed,Object? destinationHighlights = freezed,Object? culinarySignificance = freezed,Object? performanceStatistics = freezed,Object? leagueStandings = freezed,Object? diyTips = freezed,Object? designPrinciples = freezed,Object? userExperienceImpact = freezed,Object? gameplayMechanics = freezed,Object? industryImpact = freezed,Object? technicalSpecifications = freezed,Object? articles = freezed,Object? domains = freezed,}) {
  return _then(_self.copyWith(
clusterNumber: freezed == clusterNumber ? _self.clusterNumber : clusterNumber // ignore: cast_nullable_to_non_nullable
as int?,uniqueDomains: freezed == uniqueDomains ? _self.uniqueDomains : uniqueDomains // ignore: cast_nullable_to_non_nullable
as int?,numberOfTitles: freezed == numberOfTitles ? _self.numberOfTitles : numberOfTitles // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,shortSummary: freezed == shortSummary ? _self.shortSummary : shortSummary // ignore: cast_nullable_to_non_nullable
as String?,didYouKnow: freezed == didYouKnow ? _self.didYouKnow : didYouKnow // ignore: cast_nullable_to_non_nullable
as String?,talkingPoints: freezed == talkingPoints ? _self.talkingPoints : talkingPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String?,quoteAuthor: freezed == quoteAuthor ? _self.quoteAuthor : quoteAuthor // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceUrl: freezed == quoteSourceUrl ? _self.quoteSourceUrl : quoteSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceDomain: freezed == quoteSourceDomain ? _self.quoteSourceDomain : quoteSourceDomain // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,perspectives: freezed == perspectives ? _self.perspectives : perspectives // ignore: cast_nullable_to_non_nullable
as List<Perspectives>?,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,geopoliticalContext: freezed == geopoliticalContext ? _self.geopoliticalContext : geopoliticalContext // ignore: cast_nullable_to_non_nullable
as String?,historicalBackground: freezed == historicalBackground ? _self.historicalBackground : historicalBackground // ignore: cast_nullable_to_non_nullable
as String?,internationalReactions: null == internationalReactions ? _self.internationalReactions : internationalReactions // ignore: cast_nullable_to_non_nullable
as List<String>,humanitarianImpact: freezed == humanitarianImpact ? _self.humanitarianImpact : humanitarianImpact // ignore: cast_nullable_to_non_nullable
as String?,economicImplications: freezed == economicImplications ? _self.economicImplications : economicImplications // ignore: cast_nullable_to_non_nullable
as String?,timeline: freezed == timeline ? _self.timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<String>?,futureOutlook: freezed == futureOutlook ? _self.futureOutlook : futureOutlook // ignore: cast_nullable_to_non_nullable
as String?,keyPlayers: freezed == keyPlayers ? _self.keyPlayers : keyPlayers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,technicalDetails: freezed == technicalDetails ? _self.technicalDetails : technicalDetails // ignore: cast_nullable_to_non_nullable
as String?,businessAngleText: freezed == businessAngleText ? _self.businessAngleText : businessAngleText // ignore: cast_nullable_to_non_nullable
as String?,businessAnglePoints: freezed == businessAnglePoints ? _self.businessAnglePoints : businessAnglePoints // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,userActionItems: freezed == userActionItems ? _self.userActionItems : userActionItems // ignore: cast_nullable_to_non_nullable
as String?,scientificSignificance: freezed == scientificSignificance ? _self.scientificSignificance : scientificSignificance // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,travelAdvisory: freezed == travelAdvisory ? _self.travelAdvisory : travelAdvisory // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,destinationHighlights: freezed == destinationHighlights ? _self.destinationHighlights : destinationHighlights // ignore: cast_nullable_to_non_nullable
as String?,culinarySignificance: freezed == culinarySignificance ? _self.culinarySignificance : culinarySignificance // ignore: cast_nullable_to_non_nullable
as String?,performanceStatistics: freezed == performanceStatistics ? _self.performanceStatistics : performanceStatistics // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,leagueStandings: freezed == leagueStandings ? _self.leagueStandings : leagueStandings // ignore: cast_nullable_to_non_nullable
as String?,diyTips: freezed == diyTips ? _self.diyTips : diyTips // ignore: cast_nullable_to_non_nullable
as String?,designPrinciples: freezed == designPrinciples ? _self.designPrinciples : designPrinciples // ignore: cast_nullable_to_non_nullable
as String?,userExperienceImpact: freezed == userExperienceImpact ? _self.userExperienceImpact : userExperienceImpact // ignore: cast_nullable_to_non_nullable
as String?,gameplayMechanics: freezed == gameplayMechanics ? _self.gameplayMechanics : gameplayMechanics // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,industryImpact: freezed == industryImpact ? _self.industryImpact : industryImpact // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,technicalSpecifications: freezed == technicalSpecifications ? _self.technicalSpecifications : technicalSpecifications // ignore: cast_nullable_to_non_nullable
as String?,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<Articles>?,domains: freezed == domains ? _self.domains : domains // ignore: cast_nullable_to_non_nullable
as List<Domains>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Clusters implements Clusters {
  const _Clusters({@JsonKey(name: 'cluster_number') this.clusterNumber, @JsonKey(name: 'unique_domains') this.uniqueDomains, @JsonKey(name: 'number_of_titles') this.numberOfTitles, @JsonKey(name: 'category') this.category, @JsonKey(name: 'title') this.title, @JsonKey(name: 'short_summary') this.shortSummary, @JsonKey(name: 'did_you_know') this.didYouKnow, @JsonKey(name: 'talking_points') final  List<String>? talkingPoints, @JsonKey(name: 'quote') this.quote, @JsonKey(name: 'quote_author') this.quoteAuthor, @JsonKey(name: 'quote_source_url') this.quoteSourceUrl, @JsonKey(name: 'quote_source_domain') this.quoteSourceDomain, @JsonKey(name: 'location') this.location, @JsonKey(name: 'perspectives') final  List<Perspectives>? perspectives, @JsonKey(name: 'emoji') this.emoji, @JsonKey(name: 'geopolitical_context') this.geopoliticalContext, @JsonKey(name: 'historical_background') this.historicalBackground, @JsonKey(name: 'international_reactions') final  List<String> internationalReactions = const [], @JsonKey(name: 'humanitarian_impact') this.humanitarianImpact, @JsonKey(name: 'economic_implications') this.economicImplications, @JsonKey(name: 'timeline') final  List<String>? timeline, @JsonKey(name: 'future_outlook') this.futureOutlook, @JsonKey(name: 'key_players') final  List<dynamic>? keyPlayers, @JsonKey(name: 'technical_details') this.technicalDetails, @JsonKey(name: 'business_angle_text') this.businessAngleText, @JsonKey(name: 'business_angle_points') final  List<dynamic>? businessAnglePoints, @JsonKey(name: 'user_action_items') this.userActionItems, @JsonKey(name: 'scientific_significance') final  List<dynamic>? scientificSignificance, @JsonKey(name: 'travel_advisory') final  List<dynamic>? travelAdvisory, @JsonKey(name: 'destination_highlights') this.destinationHighlights, @JsonKey(name: 'culinary_significance') this.culinarySignificance, @JsonKey(name: 'performance_statistics') final  List<dynamic>? performanceStatistics, @JsonKey(name: 'league_standings') this.leagueStandings, @JsonKey(name: 'diy_tips') this.diyTips, @JsonKey(name: 'design_principles') this.designPrinciples, @JsonKey(name: 'user_experience_impact') this.userExperienceImpact, @JsonKey(name: 'gameplay_mechanics') final  List<dynamic>? gameplayMechanics, @JsonKey(name: 'industry_impact') final  List<dynamic>? industryImpact, @JsonKey(name: 'technical_specifications') this.technicalSpecifications, @JsonKey(name: 'articles') final  List<Articles>? articles, @JsonKey(name: 'domains') final  List<Domains>? domains}): _talkingPoints = talkingPoints,_perspectives = perspectives,_internationalReactions = internationalReactions,_timeline = timeline,_keyPlayers = keyPlayers,_businessAnglePoints = businessAnglePoints,_scientificSignificance = scientificSignificance,_travelAdvisory = travelAdvisory,_performanceStatistics = performanceStatistics,_gameplayMechanics = gameplayMechanics,_industryImpact = industryImpact,_articles = articles,_domains = domains;
  factory _Clusters.fromJson(Map<String, dynamic> json) => _$ClustersFromJson(json);

@override@JsonKey(name: 'cluster_number') final  int? clusterNumber;
@override@JsonKey(name: 'unique_domains') final  int? uniqueDomains;
@override@JsonKey(name: 'number_of_titles') final  int? numberOfTitles;
@override@JsonKey(name: 'category') final  String? category;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'short_summary') final  String? shortSummary;
@override@JsonKey(name: 'did_you_know') final  String? didYouKnow;
 final  List<String>? _talkingPoints;
@override@JsonKey(name: 'talking_points') List<String>? get talkingPoints {
  final value = _talkingPoints;
  if (value == null) return null;
  if (_talkingPoints is EqualUnmodifiableListView) return _talkingPoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'quote') final  String? quote;
@override@JsonKey(name: 'quote_author') final  String? quoteAuthor;
@override@JsonKey(name: 'quote_source_url') final  String? quoteSourceUrl;
@override@JsonKey(name: 'quote_source_domain') final  String? quoteSourceDomain;
@override@JsonKey(name: 'location') final  String? location;
 final  List<Perspectives>? _perspectives;
@override@JsonKey(name: 'perspectives') List<Perspectives>? get perspectives {
  final value = _perspectives;
  if (value == null) return null;
  if (_perspectives is EqualUnmodifiableListView) return _perspectives;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'emoji') final  String? emoji;
@override@JsonKey(name: 'geopolitical_context') final  String? geopoliticalContext;
@override@JsonKey(name: 'historical_background') final  String? historicalBackground;
 final  List<String> _internationalReactions;
@override@JsonKey(name: 'international_reactions') List<String> get internationalReactions {
  if (_internationalReactions is EqualUnmodifiableListView) return _internationalReactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_internationalReactions);
}

@override@JsonKey(name: 'humanitarian_impact') final  String? humanitarianImpact;
@override@JsonKey(name: 'economic_implications') final  String? economicImplications;
 final  List<String>? _timeline;
@override@JsonKey(name: 'timeline') List<String>? get timeline {
  final value = _timeline;
  if (value == null) return null;
  if (_timeline is EqualUnmodifiableListView) return _timeline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'future_outlook') final  String? futureOutlook;
 final  List<dynamic>? _keyPlayers;
@override@JsonKey(name: 'key_players') List<dynamic>? get keyPlayers {
  final value = _keyPlayers;
  if (value == null) return null;
  if (_keyPlayers is EqualUnmodifiableListView) return _keyPlayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'technical_details') final  String? technicalDetails;
@override@JsonKey(name: 'business_angle_text') final  String? businessAngleText;
 final  List<dynamic>? _businessAnglePoints;
@override@JsonKey(name: 'business_angle_points') List<dynamic>? get businessAnglePoints {
  final value = _businessAnglePoints;
  if (value == null) return null;
  if (_businessAnglePoints is EqualUnmodifiableListView) return _businessAnglePoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'user_action_items') final  String? userActionItems;
 final  List<dynamic>? _scientificSignificance;
@override@JsonKey(name: 'scientific_significance') List<dynamic>? get scientificSignificance {
  final value = _scientificSignificance;
  if (value == null) return null;
  if (_scientificSignificance is EqualUnmodifiableListView) return _scientificSignificance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _travelAdvisory;
@override@JsonKey(name: 'travel_advisory') List<dynamic>? get travelAdvisory {
  final value = _travelAdvisory;
  if (value == null) return null;
  if (_travelAdvisory is EqualUnmodifiableListView) return _travelAdvisory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'destination_highlights') final  String? destinationHighlights;
@override@JsonKey(name: 'culinary_significance') final  String? culinarySignificance;
 final  List<dynamic>? _performanceStatistics;
@override@JsonKey(name: 'performance_statistics') List<dynamic>? get performanceStatistics {
  final value = _performanceStatistics;
  if (value == null) return null;
  if (_performanceStatistics is EqualUnmodifiableListView) return _performanceStatistics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'league_standings') final  String? leagueStandings;
@override@JsonKey(name: 'diy_tips') final  String? diyTips;
@override@JsonKey(name: 'design_principles') final  String? designPrinciples;
@override@JsonKey(name: 'user_experience_impact') final  String? userExperienceImpact;
 final  List<dynamic>? _gameplayMechanics;
@override@JsonKey(name: 'gameplay_mechanics') List<dynamic>? get gameplayMechanics {
  final value = _gameplayMechanics;
  if (value == null) return null;
  if (_gameplayMechanics is EqualUnmodifiableListView) return _gameplayMechanics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<dynamic>? _industryImpact;
@override@JsonKey(name: 'industry_impact') List<dynamic>? get industryImpact {
  final value = _industryImpact;
  if (value == null) return null;
  if (_industryImpact is EqualUnmodifiableListView) return _industryImpact;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'technical_specifications') final  String? technicalSpecifications;
 final  List<Articles>? _articles;
@override@JsonKey(name: 'articles') List<Articles>? get articles {
  final value = _articles;
  if (value == null) return null;
  if (_articles is EqualUnmodifiableListView) return _articles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<Domains>? _domains;
@override@JsonKey(name: 'domains') List<Domains>? get domains {
  final value = _domains;
  if (value == null) return null;
  if (_domains is EqualUnmodifiableListView) return _domains;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Clusters
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClustersCopyWith<_Clusters> get copyWith => __$ClustersCopyWithImpl<_Clusters>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClustersToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Clusters&&(identical(other.clusterNumber, clusterNumber) || other.clusterNumber == clusterNumber)&&(identical(other.uniqueDomains, uniqueDomains) || other.uniqueDomains == uniqueDomains)&&(identical(other.numberOfTitles, numberOfTitles) || other.numberOfTitles == numberOfTitles)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortSummary, shortSummary) || other.shortSummary == shortSummary)&&(identical(other.didYouKnow, didYouKnow) || other.didYouKnow == didYouKnow)&&const DeepCollectionEquality().equals(other._talkingPoints, _talkingPoints)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.quoteAuthor, quoteAuthor) || other.quoteAuthor == quoteAuthor)&&(identical(other.quoteSourceUrl, quoteSourceUrl) || other.quoteSourceUrl == quoteSourceUrl)&&(identical(other.quoteSourceDomain, quoteSourceDomain) || other.quoteSourceDomain == quoteSourceDomain)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._perspectives, _perspectives)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.geopoliticalContext, geopoliticalContext) || other.geopoliticalContext == geopoliticalContext)&&(identical(other.historicalBackground, historicalBackground) || other.historicalBackground == historicalBackground)&&const DeepCollectionEquality().equals(other._internationalReactions, _internationalReactions)&&(identical(other.humanitarianImpact, humanitarianImpact) || other.humanitarianImpact == humanitarianImpact)&&(identical(other.economicImplications, economicImplications) || other.economicImplications == economicImplications)&&const DeepCollectionEquality().equals(other._timeline, _timeline)&&(identical(other.futureOutlook, futureOutlook) || other.futureOutlook == futureOutlook)&&const DeepCollectionEquality().equals(other._keyPlayers, _keyPlayers)&&(identical(other.technicalDetails, technicalDetails) || other.technicalDetails == technicalDetails)&&(identical(other.businessAngleText, businessAngleText) || other.businessAngleText == businessAngleText)&&const DeepCollectionEquality().equals(other._businessAnglePoints, _businessAnglePoints)&&(identical(other.userActionItems, userActionItems) || other.userActionItems == userActionItems)&&const DeepCollectionEquality().equals(other._scientificSignificance, _scientificSignificance)&&const DeepCollectionEquality().equals(other._travelAdvisory, _travelAdvisory)&&(identical(other.destinationHighlights, destinationHighlights) || other.destinationHighlights == destinationHighlights)&&(identical(other.culinarySignificance, culinarySignificance) || other.culinarySignificance == culinarySignificance)&&const DeepCollectionEquality().equals(other._performanceStatistics, _performanceStatistics)&&(identical(other.leagueStandings, leagueStandings) || other.leagueStandings == leagueStandings)&&(identical(other.diyTips, diyTips) || other.diyTips == diyTips)&&(identical(other.designPrinciples, designPrinciples) || other.designPrinciples == designPrinciples)&&(identical(other.userExperienceImpact, userExperienceImpact) || other.userExperienceImpact == userExperienceImpact)&&const DeepCollectionEquality().equals(other._gameplayMechanics, _gameplayMechanics)&&const DeepCollectionEquality().equals(other._industryImpact, _industryImpact)&&(identical(other.technicalSpecifications, technicalSpecifications) || other.technicalSpecifications == technicalSpecifications)&&const DeepCollectionEquality().equals(other._articles, _articles)&&const DeepCollectionEquality().equals(other._domains, _domains));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,clusterNumber,uniqueDomains,numberOfTitles,category,title,shortSummary,didYouKnow,const DeepCollectionEquality().hash(_talkingPoints),quote,quoteAuthor,quoteSourceUrl,quoteSourceDomain,location,const DeepCollectionEquality().hash(_perspectives),emoji,geopoliticalContext,historicalBackground,const DeepCollectionEquality().hash(_internationalReactions),humanitarianImpact,economicImplications,const DeepCollectionEquality().hash(_timeline),futureOutlook,const DeepCollectionEquality().hash(_keyPlayers),technicalDetails,businessAngleText,const DeepCollectionEquality().hash(_businessAnglePoints),userActionItems,const DeepCollectionEquality().hash(_scientificSignificance),const DeepCollectionEquality().hash(_travelAdvisory),destinationHighlights,culinarySignificance,const DeepCollectionEquality().hash(_performanceStatistics),leagueStandings,diyTips,designPrinciples,userExperienceImpact,const DeepCollectionEquality().hash(_gameplayMechanics),const DeepCollectionEquality().hash(_industryImpact),technicalSpecifications,const DeepCollectionEquality().hash(_articles),const DeepCollectionEquality().hash(_domains)]);

@override
String toString() {
  return 'Clusters(clusterNumber: $clusterNumber, uniqueDomains: $uniqueDomains, numberOfTitles: $numberOfTitles, category: $category, title: $title, shortSummary: $shortSummary, didYouKnow: $didYouKnow, talkingPoints: $talkingPoints, quote: $quote, quoteAuthor: $quoteAuthor, quoteSourceUrl: $quoteSourceUrl, quoteSourceDomain: $quoteSourceDomain, location: $location, perspectives: $perspectives, emoji: $emoji, geopoliticalContext: $geopoliticalContext, historicalBackground: $historicalBackground, internationalReactions: $internationalReactions, humanitarianImpact: $humanitarianImpact, economicImplications: $economicImplications, timeline: $timeline, futureOutlook: $futureOutlook, keyPlayers: $keyPlayers, technicalDetails: $technicalDetails, businessAngleText: $businessAngleText, businessAnglePoints: $businessAnglePoints, userActionItems: $userActionItems, scientificSignificance: $scientificSignificance, travelAdvisory: $travelAdvisory, destinationHighlights: $destinationHighlights, culinarySignificance: $culinarySignificance, performanceStatistics: $performanceStatistics, leagueStandings: $leagueStandings, diyTips: $diyTips, designPrinciples: $designPrinciples, userExperienceImpact: $userExperienceImpact, gameplayMechanics: $gameplayMechanics, industryImpact: $industryImpact, technicalSpecifications: $technicalSpecifications, articles: $articles, domains: $domains)';
}


}

/// @nodoc
abstract mixin class _$ClustersCopyWith<$Res> implements $ClustersCopyWith<$Res> {
  factory _$ClustersCopyWith(_Clusters value, $Res Function(_Clusters) _then) = __$ClustersCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'cluster_number') int? clusterNumber,@JsonKey(name: 'unique_domains') int? uniqueDomains,@JsonKey(name: 'number_of_titles') int? numberOfTitles,@JsonKey(name: 'category') String? category,@JsonKey(name: 'title') String? title,@JsonKey(name: 'short_summary') String? shortSummary,@JsonKey(name: 'did_you_know') String? didYouKnow,@JsonKey(name: 'talking_points') List<String>? talkingPoints,@JsonKey(name: 'quote') String? quote,@JsonKey(name: 'quote_author') String? quoteAuthor,@JsonKey(name: 'quote_source_url') String? quoteSourceUrl,@JsonKey(name: 'quote_source_domain') String? quoteSourceDomain,@JsonKey(name: 'location') String? location,@JsonKey(name: 'perspectives') List<Perspectives>? perspectives,@JsonKey(name: 'emoji') String? emoji,@JsonKey(name: 'geopolitical_context') String? geopoliticalContext,@JsonKey(name: 'historical_background') String? historicalBackground,@JsonKey(name: 'international_reactions') List<String> internationalReactions,@JsonKey(name: 'humanitarian_impact') String? humanitarianImpact,@JsonKey(name: 'economic_implications') String? economicImplications,@JsonKey(name: 'timeline') List<String>? timeline,@JsonKey(name: 'future_outlook') String? futureOutlook,@JsonKey(name: 'key_players') List<dynamic>? keyPlayers,@JsonKey(name: 'technical_details') String? technicalDetails,@JsonKey(name: 'business_angle_text') String? businessAngleText,@JsonKey(name: 'business_angle_points') List<dynamic>? businessAnglePoints,@JsonKey(name: 'user_action_items') String? userActionItems,@JsonKey(name: 'scientific_significance') List<dynamic>? scientificSignificance,@JsonKey(name: 'travel_advisory') List<dynamic>? travelAdvisory,@JsonKey(name: 'destination_highlights') String? destinationHighlights,@JsonKey(name: 'culinary_significance') String? culinarySignificance,@JsonKey(name: 'performance_statistics') List<dynamic>? performanceStatistics,@JsonKey(name: 'league_standings') String? leagueStandings,@JsonKey(name: 'diy_tips') String? diyTips,@JsonKey(name: 'design_principles') String? designPrinciples,@JsonKey(name: 'user_experience_impact') String? userExperienceImpact,@JsonKey(name: 'gameplay_mechanics') List<dynamic>? gameplayMechanics,@JsonKey(name: 'industry_impact') List<dynamic>? industryImpact,@JsonKey(name: 'technical_specifications') String? technicalSpecifications,@JsonKey(name: 'articles') List<Articles>? articles,@JsonKey(name: 'domains') List<Domains>? domains
});




}
/// @nodoc
class __$ClustersCopyWithImpl<$Res>
    implements _$ClustersCopyWith<$Res> {
  __$ClustersCopyWithImpl(this._self, this._then);

  final _Clusters _self;
  final $Res Function(_Clusters) _then;

/// Create a copy of Clusters
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clusterNumber = freezed,Object? uniqueDomains = freezed,Object? numberOfTitles = freezed,Object? category = freezed,Object? title = freezed,Object? shortSummary = freezed,Object? didYouKnow = freezed,Object? talkingPoints = freezed,Object? quote = freezed,Object? quoteAuthor = freezed,Object? quoteSourceUrl = freezed,Object? quoteSourceDomain = freezed,Object? location = freezed,Object? perspectives = freezed,Object? emoji = freezed,Object? geopoliticalContext = freezed,Object? historicalBackground = freezed,Object? internationalReactions = null,Object? humanitarianImpact = freezed,Object? economicImplications = freezed,Object? timeline = freezed,Object? futureOutlook = freezed,Object? keyPlayers = freezed,Object? technicalDetails = freezed,Object? businessAngleText = freezed,Object? businessAnglePoints = freezed,Object? userActionItems = freezed,Object? scientificSignificance = freezed,Object? travelAdvisory = freezed,Object? destinationHighlights = freezed,Object? culinarySignificance = freezed,Object? performanceStatistics = freezed,Object? leagueStandings = freezed,Object? diyTips = freezed,Object? designPrinciples = freezed,Object? userExperienceImpact = freezed,Object? gameplayMechanics = freezed,Object? industryImpact = freezed,Object? technicalSpecifications = freezed,Object? articles = freezed,Object? domains = freezed,}) {
  return _then(_Clusters(
clusterNumber: freezed == clusterNumber ? _self.clusterNumber : clusterNumber // ignore: cast_nullable_to_non_nullable
as int?,uniqueDomains: freezed == uniqueDomains ? _self.uniqueDomains : uniqueDomains // ignore: cast_nullable_to_non_nullable
as int?,numberOfTitles: freezed == numberOfTitles ? _self.numberOfTitles : numberOfTitles // ignore: cast_nullable_to_non_nullable
as int?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as String?,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,shortSummary: freezed == shortSummary ? _self.shortSummary : shortSummary // ignore: cast_nullable_to_non_nullable
as String?,didYouKnow: freezed == didYouKnow ? _self.didYouKnow : didYouKnow // ignore: cast_nullable_to_non_nullable
as String?,talkingPoints: freezed == talkingPoints ? _self._talkingPoints : talkingPoints // ignore: cast_nullable_to_non_nullable
as List<String>?,quote: freezed == quote ? _self.quote : quote // ignore: cast_nullable_to_non_nullable
as String?,quoteAuthor: freezed == quoteAuthor ? _self.quoteAuthor : quoteAuthor // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceUrl: freezed == quoteSourceUrl ? _self.quoteSourceUrl : quoteSourceUrl // ignore: cast_nullable_to_non_nullable
as String?,quoteSourceDomain: freezed == quoteSourceDomain ? _self.quoteSourceDomain : quoteSourceDomain // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,perspectives: freezed == perspectives ? _self._perspectives : perspectives // ignore: cast_nullable_to_non_nullable
as List<Perspectives>?,emoji: freezed == emoji ? _self.emoji : emoji // ignore: cast_nullable_to_non_nullable
as String?,geopoliticalContext: freezed == geopoliticalContext ? _self.geopoliticalContext : geopoliticalContext // ignore: cast_nullable_to_non_nullable
as String?,historicalBackground: freezed == historicalBackground ? _self.historicalBackground : historicalBackground // ignore: cast_nullable_to_non_nullable
as String?,internationalReactions: null == internationalReactions ? _self._internationalReactions : internationalReactions // ignore: cast_nullable_to_non_nullable
as List<String>,humanitarianImpact: freezed == humanitarianImpact ? _self.humanitarianImpact : humanitarianImpact // ignore: cast_nullable_to_non_nullable
as String?,economicImplications: freezed == economicImplications ? _self.economicImplications : economicImplications // ignore: cast_nullable_to_non_nullable
as String?,timeline: freezed == timeline ? _self._timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<String>?,futureOutlook: freezed == futureOutlook ? _self.futureOutlook : futureOutlook // ignore: cast_nullable_to_non_nullable
as String?,keyPlayers: freezed == keyPlayers ? _self._keyPlayers : keyPlayers // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,technicalDetails: freezed == technicalDetails ? _self.technicalDetails : technicalDetails // ignore: cast_nullable_to_non_nullable
as String?,businessAngleText: freezed == businessAngleText ? _self.businessAngleText : businessAngleText // ignore: cast_nullable_to_non_nullable
as String?,businessAnglePoints: freezed == businessAnglePoints ? _self._businessAnglePoints : businessAnglePoints // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,userActionItems: freezed == userActionItems ? _self.userActionItems : userActionItems // ignore: cast_nullable_to_non_nullable
as String?,scientificSignificance: freezed == scientificSignificance ? _self._scientificSignificance : scientificSignificance // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,travelAdvisory: freezed == travelAdvisory ? _self._travelAdvisory : travelAdvisory // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,destinationHighlights: freezed == destinationHighlights ? _self.destinationHighlights : destinationHighlights // ignore: cast_nullable_to_non_nullable
as String?,culinarySignificance: freezed == culinarySignificance ? _self.culinarySignificance : culinarySignificance // ignore: cast_nullable_to_non_nullable
as String?,performanceStatistics: freezed == performanceStatistics ? _self._performanceStatistics : performanceStatistics // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,leagueStandings: freezed == leagueStandings ? _self.leagueStandings : leagueStandings // ignore: cast_nullable_to_non_nullable
as String?,diyTips: freezed == diyTips ? _self.diyTips : diyTips // ignore: cast_nullable_to_non_nullable
as String?,designPrinciples: freezed == designPrinciples ? _self.designPrinciples : designPrinciples // ignore: cast_nullable_to_non_nullable
as String?,userExperienceImpact: freezed == userExperienceImpact ? _self.userExperienceImpact : userExperienceImpact // ignore: cast_nullable_to_non_nullable
as String?,gameplayMechanics: freezed == gameplayMechanics ? _self._gameplayMechanics : gameplayMechanics // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,industryImpact: freezed == industryImpact ? _self._industryImpact : industryImpact // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,technicalSpecifications: freezed == technicalSpecifications ? _self.technicalSpecifications : technicalSpecifications // ignore: cast_nullable_to_non_nullable
as String?,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
as List<Articles>?,domains: freezed == domains ? _self._domains : domains // ignore: cast_nullable_to_non_nullable
as List<Domains>?,
  ));
}


}


/// @nodoc
mixin _$Domains {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'favicon') String? get favicon;
/// Create a copy of Domains
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DomainsCopyWith<Domains> get copyWith => _$DomainsCopyWithImpl<Domains>(this as Domains, _$identity);

  /// Serializes this Domains to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Domains&&(identical(other.name, name) || other.name == name)&&(identical(other.favicon, favicon) || other.favicon == favicon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,favicon);

@override
String toString() {
  return 'Domains(name: $name, favicon: $favicon)';
}


}

/// @nodoc
abstract mixin class $DomainsCopyWith<$Res>  {
  factory $DomainsCopyWith(Domains value, $Res Function(Domains) _then) = _$DomainsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'favicon') String? favicon
});




}
/// @nodoc
class _$DomainsCopyWithImpl<$Res>
    implements $DomainsCopyWith<$Res> {
  _$DomainsCopyWithImpl(this._self, this._then);

  final Domains _self;
  final $Res Function(Domains) _then;

/// Create a copy of Domains
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? favicon = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,favicon: freezed == favicon ? _self.favicon : favicon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Domains implements Domains {
  const _Domains({@JsonKey(name: 'name') this.name, @JsonKey(name: 'favicon') this.favicon});
  factory _Domains.fromJson(Map<String, dynamic> json) => _$DomainsFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'favicon') final  String? favicon;

/// Create a copy of Domains
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DomainsCopyWith<_Domains> get copyWith => __$DomainsCopyWithImpl<_Domains>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DomainsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Domains&&(identical(other.name, name) || other.name == name)&&(identical(other.favicon, favicon) || other.favicon == favicon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,favicon);

@override
String toString() {
  return 'Domains(name: $name, favicon: $favicon)';
}


}

/// @nodoc
abstract mixin class _$DomainsCopyWith<$Res> implements $DomainsCopyWith<$Res> {
  factory _$DomainsCopyWith(_Domains value, $Res Function(_Domains) _then) = __$DomainsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'favicon') String? favicon
});




}
/// @nodoc
class __$DomainsCopyWithImpl<$Res>
    implements _$DomainsCopyWith<$Res> {
  __$DomainsCopyWithImpl(this._self, this._then);

  final _Domains _self;
  final $Res Function(_Domains) _then;

/// Create a copy of Domains
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? favicon = freezed,}) {
  return _then(_Domains(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,favicon: freezed == favicon ? _self.favicon : favicon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Articles {

@JsonKey(name: 'title') String? get title;@JsonKey(name: 'link') String? get link;@JsonKey(name: 'domain') String? get domain;@JsonKey(name: 'date') String? get date;@JsonKey(name: 'image') String? get image;@JsonKey(name: 'image_caption') String? get imageCaption;
/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticlesCopyWith<Articles> get copyWith => _$ArticlesCopyWithImpl<Articles>(this as Articles, _$identity);

  /// Serializes this Articles to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Articles&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.date, date) || other.date == date)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageCaption, imageCaption) || other.imageCaption == imageCaption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,domain,date,image,imageCaption);

@override
String toString() {
  return 'Articles(title: $title, link: $link, domain: $domain, date: $date, image: $image, imageCaption: $imageCaption)';
}


}

/// @nodoc
abstract mixin class $ArticlesCopyWith<$Res>  {
  factory $ArticlesCopyWith(Articles value, $Res Function(Articles) _then) = _$ArticlesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'link') String? link,@JsonKey(name: 'domain') String? domain,@JsonKey(name: 'date') String? date,@JsonKey(name: 'image') String? image,@JsonKey(name: 'image_caption') String? imageCaption
});




}
/// @nodoc
class _$ArticlesCopyWithImpl<$Res>
    implements $ArticlesCopyWith<$Res> {
  _$ArticlesCopyWithImpl(this._self, this._then);

  final Articles _self;
  final $Res Function(Articles) _then;

/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? title = freezed,Object? link = freezed,Object? domain = freezed,Object? date = freezed,Object? image = freezed,Object? imageCaption = freezed,}) {
  return _then(_self.copyWith(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageCaption: freezed == imageCaption ? _self.imageCaption : imageCaption // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Articles implements Articles {
  const _Articles({@JsonKey(name: 'title') this.title, @JsonKey(name: 'link') this.link, @JsonKey(name: 'domain') this.domain, @JsonKey(name: 'date') this.date, @JsonKey(name: 'image') this.image, @JsonKey(name: 'image_caption') this.imageCaption});
  factory _Articles.fromJson(Map<String, dynamic> json) => _$ArticlesFromJson(json);

@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'link') final  String? link;
@override@JsonKey(name: 'domain') final  String? domain;
@override@JsonKey(name: 'date') final  String? date;
@override@JsonKey(name: 'image') final  String? image;
@override@JsonKey(name: 'image_caption') final  String? imageCaption;

/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticlesCopyWith<_Articles> get copyWith => __$ArticlesCopyWithImpl<_Articles>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticlesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Articles&&(identical(other.title, title) || other.title == title)&&(identical(other.link, link) || other.link == link)&&(identical(other.domain, domain) || other.domain == domain)&&(identical(other.date, date) || other.date == date)&&(identical(other.image, image) || other.image == image)&&(identical(other.imageCaption, imageCaption) || other.imageCaption == imageCaption));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,title,link,domain,date,image,imageCaption);

@override
String toString() {
  return 'Articles(title: $title, link: $link, domain: $domain, date: $date, image: $image, imageCaption: $imageCaption)';
}


}

/// @nodoc
abstract mixin class _$ArticlesCopyWith<$Res> implements $ArticlesCopyWith<$Res> {
  factory _$ArticlesCopyWith(_Articles value, $Res Function(_Articles) _then) = __$ArticlesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'title') String? title,@JsonKey(name: 'link') String? link,@JsonKey(name: 'domain') String? domain,@JsonKey(name: 'date') String? date,@JsonKey(name: 'image') String? image,@JsonKey(name: 'image_caption') String? imageCaption
});




}
/// @nodoc
class __$ArticlesCopyWithImpl<$Res>
    implements _$ArticlesCopyWith<$Res> {
  __$ArticlesCopyWithImpl(this._self, this._then);

  final _Articles _self;
  final $Res Function(_Articles) _then;

/// Create a copy of Articles
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? title = freezed,Object? link = freezed,Object? domain = freezed,Object? date = freezed,Object? image = freezed,Object? imageCaption = freezed,}) {
  return _then(_Articles(
title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,link: freezed == link ? _self.link : link // ignore: cast_nullable_to_non_nullable
as String?,domain: freezed == domain ? _self.domain : domain // ignore: cast_nullable_to_non_nullable
as String?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,imageCaption: freezed == imageCaption ? _self.imageCaption : imageCaption // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Perspectives {

@JsonKey(name: 'text') String? get text;@JsonKey(name: 'sources') List<Sources>? get sources;
/// Create a copy of Perspectives
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PerspectivesCopyWith<Perspectives> get copyWith => _$PerspectivesCopyWithImpl<Perspectives>(this as Perspectives, _$identity);

  /// Serializes this Perspectives to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Perspectives&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other.sources, sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(sources));

@override
String toString() {
  return 'Perspectives(text: $text, sources: $sources)';
}


}

/// @nodoc
abstract mixin class $PerspectivesCopyWith<$Res>  {
  factory $PerspectivesCopyWith(Perspectives value, $Res Function(Perspectives) _then) = _$PerspectivesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'text') String? text,@JsonKey(name: 'sources') List<Sources>? sources
});




}
/// @nodoc
class _$PerspectivesCopyWithImpl<$Res>
    implements $PerspectivesCopyWith<$Res> {
  _$PerspectivesCopyWithImpl(this._self, this._then);

  final Perspectives _self;
  final $Res Function(Perspectives) _then;

/// Create a copy of Perspectives
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? text = freezed,Object? sources = freezed,}) {
  return _then(_self.copyWith(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,sources: freezed == sources ? _self.sources : sources // ignore: cast_nullable_to_non_nullable
as List<Sources>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Perspectives implements Perspectives {
  const _Perspectives({@JsonKey(name: 'text') this.text, @JsonKey(name: 'sources') final  List<Sources>? sources}): _sources = sources;
  factory _Perspectives.fromJson(Map<String, dynamic> json) => _$PerspectivesFromJson(json);

@override@JsonKey(name: 'text') final  String? text;
 final  List<Sources>? _sources;
@override@JsonKey(name: 'sources') List<Sources>? get sources {
  final value = _sources;
  if (value == null) return null;
  if (_sources is EqualUnmodifiableListView) return _sources;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Perspectives
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PerspectivesCopyWith<_Perspectives> get copyWith => __$PerspectivesCopyWithImpl<_Perspectives>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PerspectivesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Perspectives&&(identical(other.text, text) || other.text == text)&&const DeepCollectionEquality().equals(other._sources, _sources));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,text,const DeepCollectionEquality().hash(_sources));

@override
String toString() {
  return 'Perspectives(text: $text, sources: $sources)';
}


}

/// @nodoc
abstract mixin class _$PerspectivesCopyWith<$Res> implements $PerspectivesCopyWith<$Res> {
  factory _$PerspectivesCopyWith(_Perspectives value, $Res Function(_Perspectives) _then) = __$PerspectivesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'text') String? text,@JsonKey(name: 'sources') List<Sources>? sources
});




}
/// @nodoc
class __$PerspectivesCopyWithImpl<$Res>
    implements _$PerspectivesCopyWith<$Res> {
  __$PerspectivesCopyWithImpl(this._self, this._then);

  final _Perspectives _self;
  final $Res Function(_Perspectives) _then;

/// Create a copy of Perspectives
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? text = freezed,Object? sources = freezed,}) {
  return _then(_Perspectives(
text: freezed == text ? _self.text : text // ignore: cast_nullable_to_non_nullable
as String?,sources: freezed == sources ? _self._sources : sources // ignore: cast_nullable_to_non_nullable
as List<Sources>?,
  ));
}


}


/// @nodoc
mixin _$Sources {

@JsonKey(name: 'name') String? get name;@JsonKey(name: 'url') String? get url;
/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SourcesCopyWith<Sources> get copyWith => _$SourcesCopyWithImpl<Sources>(this as Sources, _$identity);

  /// Serializes this Sources to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Sources&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Sources(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $SourcesCopyWith<$Res>  {
  factory $SourcesCopyWith(Sources value, $Res Function(Sources) _then) = _$SourcesCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class _$SourcesCopyWithImpl<$Res>
    implements $SourcesCopyWith<$Res> {
  _$SourcesCopyWithImpl(this._self, this._then);

  final Sources _self;
  final $Res Function(Sources) _then;

/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Sources implements Sources {
  const _Sources({@JsonKey(name: 'name') this.name, @JsonKey(name: 'url') this.url});
  factory _Sources.fromJson(Map<String, dynamic> json) => _$SourcesFromJson(json);

@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'url') final  String? url;

/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SourcesCopyWith<_Sources> get copyWith => __$SourcesCopyWithImpl<_Sources>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SourcesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Sources&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'Sources(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$SourcesCopyWith<$Res> implements $SourcesCopyWith<$Res> {
  factory _$SourcesCopyWith(_Sources value, $Res Function(_Sources) _then) = __$SourcesCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'name') String? name,@JsonKey(name: 'url') String? url
});




}
/// @nodoc
class __$SourcesCopyWithImpl<$Res>
    implements _$SourcesCopyWith<$Res> {
  __$SourcesCopyWithImpl(this._self, this._then);

  final _Sources _self;
  final $Res Function(_Sources) _then;

/// Create a copy of Sources
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? url = freezed,}) {
  return _then(_Sources(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,url: freezed == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
