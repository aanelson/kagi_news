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

@JsonKey(name: 'cluster_number') int? get clusterNumber;@JsonKey(name: 'unique_domains') int? get uniqueDomains;@JsonKey(name: 'number_of_titles') int? get numberOfTitles;@JsonKey(name: 'category') String? get category;@JsonKey(name: 'title') String? get title;@JsonKey(name: 'short_summary') String? get shortSummary;@JsonKey(name: 'did_you_know') String? get didYouKnow;@ListEmptyStringConverter()@JsonKey(name: 'talking_points') List<String>? get talkingPoints;@JsonKey(name: 'quote') String? get quote;@JsonKey(name: 'quote_author') String? get quoteAuthor;@JsonKey(name: 'quote_source_url') String? get quoteSourceUrl;@JsonKey(name: 'quote_source_domain') String? get quoteSourceDomain;@JsonKey(name: 'location') String? get location;@JsonKey(name: 'perspectives') List<Perspectives>? get perspectives;@JsonKey(name: 'emoji') String? get emoji;@JsonKey(name: 'geopolitical_context') String? get geopoliticalContext;@JsonKey(name: 'historical_background') String? get historicalBackground;@JsonKey(name: 'international_reactions')@ListEmptyStringConverter() List<String> get internationalReactions;@ListEmptyStringConverter()@JsonKey(name: 'humanitarian_impact') List<String> get humanitarianImpact;@ListEmptyStringConverter()@JsonKey(name: 'economic_implications') List<String> get economicImplications;@ListEmptyStringConverter()@JsonKey(name: 'timeline') List<String> get timeline;@ListEmptyStringConverter()@JsonKey(name: 'future_outlook') List<String> get futureOutlook;@ListEmptyStringConverter()@JsonKey(name: 'key_players') List<String> get keyPlayers;@ListEmptyStringConverter()@JsonKey(name: 'technical_details') List<String> get technicalDetails;@JsonKey(name: 'business_angle_text') String? get businessAngleText;@ListEmptyStringConverter()@JsonKey(name: 'business_angle_points') List<String> get businessAnglePoints;@ListEmptyStringConverter()@JsonKey(name: 'user_action_items') List<String> get userActionItems;@JsonKey(name: 'scientific_significance') List<dynamic>? get scientificSignificance;@ListEmptyStringConverter()@JsonKey(name: 'travel_advisory') List<String> get travelAdvisory;@ListEmptyStringConverter()@JsonKey(name: 'destination_highlights') List<String> get destinationHighlights;@ListEmptyStringConverter()@JsonKey(name: 'culinary_significance') List<String> get culinarySignificance;@JsonKey(name: 'performance_statistics') List<dynamic>? get performanceStatistics;@ListEmptyStringConverter()@JsonKey(name: 'league_standings') List<String> get leagueStandings;@ListEmptyStringConverter()@JsonKey(name: 'diy_tips') List<String> get diyTips;@ListEmptyStringConverter()@JsonKey(name: 'design_principles') List<String> get designPrinciples;@ListEmptyStringConverter()@JsonKey(name: 'user_experience_impact') List<String> get userExperienceImpact;@ListEmptyStringConverter()@JsonKey(name: 'gameplay_mechanics') List<String> get gameplayMechanics;@ListEmptyStringConverter()@JsonKey(name: 'industry_impact') List<String> get industryImpact;@ListEmptyStringConverter()@JsonKey(name: 'technical_specifications') List<String> get technicalSpecifications;@JsonKey(name: 'articles') List<Articles>? get articles;@JsonKey(name: 'domains') List<Domains>? get domains;
/// Create a copy of Clusters
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClustersCopyWith<Clusters> get copyWith => _$ClustersCopyWithImpl<Clusters>(this as Clusters, _$identity);

  /// Serializes this Clusters to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Clusters&&(identical(other.clusterNumber, clusterNumber) || other.clusterNumber == clusterNumber)&&(identical(other.uniqueDomains, uniqueDomains) || other.uniqueDomains == uniqueDomains)&&(identical(other.numberOfTitles, numberOfTitles) || other.numberOfTitles == numberOfTitles)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortSummary, shortSummary) || other.shortSummary == shortSummary)&&(identical(other.didYouKnow, didYouKnow) || other.didYouKnow == didYouKnow)&&const DeepCollectionEquality().equals(other.talkingPoints, talkingPoints)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.quoteAuthor, quoteAuthor) || other.quoteAuthor == quoteAuthor)&&(identical(other.quoteSourceUrl, quoteSourceUrl) || other.quoteSourceUrl == quoteSourceUrl)&&(identical(other.quoteSourceDomain, quoteSourceDomain) || other.quoteSourceDomain == quoteSourceDomain)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.perspectives, perspectives)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.geopoliticalContext, geopoliticalContext) || other.geopoliticalContext == geopoliticalContext)&&(identical(other.historicalBackground, historicalBackground) || other.historicalBackground == historicalBackground)&&const DeepCollectionEquality().equals(other.internationalReactions, internationalReactions)&&const DeepCollectionEquality().equals(other.humanitarianImpact, humanitarianImpact)&&const DeepCollectionEquality().equals(other.economicImplications, economicImplications)&&const DeepCollectionEquality().equals(other.timeline, timeline)&&const DeepCollectionEquality().equals(other.futureOutlook, futureOutlook)&&const DeepCollectionEquality().equals(other.keyPlayers, keyPlayers)&&const DeepCollectionEquality().equals(other.technicalDetails, technicalDetails)&&(identical(other.businessAngleText, businessAngleText) || other.businessAngleText == businessAngleText)&&const DeepCollectionEquality().equals(other.businessAnglePoints, businessAnglePoints)&&const DeepCollectionEquality().equals(other.userActionItems, userActionItems)&&const DeepCollectionEquality().equals(other.scientificSignificance, scientificSignificance)&&const DeepCollectionEquality().equals(other.travelAdvisory, travelAdvisory)&&const DeepCollectionEquality().equals(other.destinationHighlights, destinationHighlights)&&const DeepCollectionEquality().equals(other.culinarySignificance, culinarySignificance)&&const DeepCollectionEquality().equals(other.performanceStatistics, performanceStatistics)&&const DeepCollectionEquality().equals(other.leagueStandings, leagueStandings)&&const DeepCollectionEquality().equals(other.diyTips, diyTips)&&const DeepCollectionEquality().equals(other.designPrinciples, designPrinciples)&&const DeepCollectionEquality().equals(other.userExperienceImpact, userExperienceImpact)&&const DeepCollectionEquality().equals(other.gameplayMechanics, gameplayMechanics)&&const DeepCollectionEquality().equals(other.industryImpact, industryImpact)&&const DeepCollectionEquality().equals(other.technicalSpecifications, technicalSpecifications)&&const DeepCollectionEquality().equals(other.articles, articles)&&const DeepCollectionEquality().equals(other.domains, domains));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,clusterNumber,uniqueDomains,numberOfTitles,category,title,shortSummary,didYouKnow,const DeepCollectionEquality().hash(talkingPoints),quote,quoteAuthor,quoteSourceUrl,quoteSourceDomain,location,const DeepCollectionEquality().hash(perspectives),emoji,geopoliticalContext,historicalBackground,const DeepCollectionEquality().hash(internationalReactions),const DeepCollectionEquality().hash(humanitarianImpact),const DeepCollectionEquality().hash(economicImplications),const DeepCollectionEquality().hash(timeline),const DeepCollectionEquality().hash(futureOutlook),const DeepCollectionEquality().hash(keyPlayers),const DeepCollectionEquality().hash(technicalDetails),businessAngleText,const DeepCollectionEquality().hash(businessAnglePoints),const DeepCollectionEquality().hash(userActionItems),const DeepCollectionEquality().hash(scientificSignificance),const DeepCollectionEquality().hash(travelAdvisory),const DeepCollectionEquality().hash(destinationHighlights),const DeepCollectionEquality().hash(culinarySignificance),const DeepCollectionEquality().hash(performanceStatistics),const DeepCollectionEquality().hash(leagueStandings),const DeepCollectionEquality().hash(diyTips),const DeepCollectionEquality().hash(designPrinciples),const DeepCollectionEquality().hash(userExperienceImpact),const DeepCollectionEquality().hash(gameplayMechanics),const DeepCollectionEquality().hash(industryImpact),const DeepCollectionEquality().hash(technicalSpecifications),const DeepCollectionEquality().hash(articles),const DeepCollectionEquality().hash(domains)]);

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
@JsonKey(name: 'cluster_number') int? clusterNumber,@JsonKey(name: 'unique_domains') int? uniqueDomains,@JsonKey(name: 'number_of_titles') int? numberOfTitles,@JsonKey(name: 'category') String? category,@JsonKey(name: 'title') String? title,@JsonKey(name: 'short_summary') String? shortSummary,@JsonKey(name: 'did_you_know') String? didYouKnow,@ListEmptyStringConverter()@JsonKey(name: 'talking_points') List<String>? talkingPoints,@JsonKey(name: 'quote') String? quote,@JsonKey(name: 'quote_author') String? quoteAuthor,@JsonKey(name: 'quote_source_url') String? quoteSourceUrl,@JsonKey(name: 'quote_source_domain') String? quoteSourceDomain,@JsonKey(name: 'location') String? location,@JsonKey(name: 'perspectives') List<Perspectives>? perspectives,@JsonKey(name: 'emoji') String? emoji,@JsonKey(name: 'geopolitical_context') String? geopoliticalContext,@JsonKey(name: 'historical_background') String? historicalBackground,@JsonKey(name: 'international_reactions')@ListEmptyStringConverter() List<String> internationalReactions,@ListEmptyStringConverter()@JsonKey(name: 'humanitarian_impact') List<String> humanitarianImpact,@ListEmptyStringConverter()@JsonKey(name: 'economic_implications') List<String> economicImplications,@ListEmptyStringConverter()@JsonKey(name: 'timeline') List<String> timeline,@ListEmptyStringConverter()@JsonKey(name: 'future_outlook') List<String> futureOutlook,@ListEmptyStringConverter()@JsonKey(name: 'key_players') List<String> keyPlayers,@ListEmptyStringConverter()@JsonKey(name: 'technical_details') List<String> technicalDetails,@JsonKey(name: 'business_angle_text') String? businessAngleText,@ListEmptyStringConverter()@JsonKey(name: 'business_angle_points') List<String> businessAnglePoints,@ListEmptyStringConverter()@JsonKey(name: 'user_action_items') List<String> userActionItems,@JsonKey(name: 'scientific_significance') List<dynamic>? scientificSignificance,@ListEmptyStringConverter()@JsonKey(name: 'travel_advisory') List<String> travelAdvisory,@ListEmptyStringConverter()@JsonKey(name: 'destination_highlights') List<String> destinationHighlights,@ListEmptyStringConverter()@JsonKey(name: 'culinary_significance') List<String> culinarySignificance,@JsonKey(name: 'performance_statistics') List<dynamic>? performanceStatistics,@ListEmptyStringConverter()@JsonKey(name: 'league_standings') List<String> leagueStandings,@ListEmptyStringConverter()@JsonKey(name: 'diy_tips') List<String> diyTips,@ListEmptyStringConverter()@JsonKey(name: 'design_principles') List<String> designPrinciples,@ListEmptyStringConverter()@JsonKey(name: 'user_experience_impact') List<String> userExperienceImpact,@ListEmptyStringConverter()@JsonKey(name: 'gameplay_mechanics') List<String> gameplayMechanics,@ListEmptyStringConverter()@JsonKey(name: 'industry_impact') List<String> industryImpact,@ListEmptyStringConverter()@JsonKey(name: 'technical_specifications') List<String> technicalSpecifications,@JsonKey(name: 'articles') List<Articles>? articles,@JsonKey(name: 'domains') List<Domains>? domains
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
@pragma('vm:prefer-inline') @override $Res call({Object? clusterNumber = freezed,Object? uniqueDomains = freezed,Object? numberOfTitles = freezed,Object? category = freezed,Object? title = freezed,Object? shortSummary = freezed,Object? didYouKnow = freezed,Object? talkingPoints = freezed,Object? quote = freezed,Object? quoteAuthor = freezed,Object? quoteSourceUrl = freezed,Object? quoteSourceDomain = freezed,Object? location = freezed,Object? perspectives = freezed,Object? emoji = freezed,Object? geopoliticalContext = freezed,Object? historicalBackground = freezed,Object? internationalReactions = null,Object? humanitarianImpact = null,Object? economicImplications = null,Object? timeline = null,Object? futureOutlook = null,Object? keyPlayers = null,Object? technicalDetails = null,Object? businessAngleText = freezed,Object? businessAnglePoints = null,Object? userActionItems = null,Object? scientificSignificance = freezed,Object? travelAdvisory = null,Object? destinationHighlights = null,Object? culinarySignificance = null,Object? performanceStatistics = freezed,Object? leagueStandings = null,Object? diyTips = null,Object? designPrinciples = null,Object? userExperienceImpact = null,Object? gameplayMechanics = null,Object? industryImpact = null,Object? technicalSpecifications = null,Object? articles = freezed,Object? domains = freezed,}) {
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
as List<String>,humanitarianImpact: null == humanitarianImpact ? _self.humanitarianImpact : humanitarianImpact // ignore: cast_nullable_to_non_nullable
as List<String>,economicImplications: null == economicImplications ? _self.economicImplications : economicImplications // ignore: cast_nullable_to_non_nullable
as List<String>,timeline: null == timeline ? _self.timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<String>,futureOutlook: null == futureOutlook ? _self.futureOutlook : futureOutlook // ignore: cast_nullable_to_non_nullable
as List<String>,keyPlayers: null == keyPlayers ? _self.keyPlayers : keyPlayers // ignore: cast_nullable_to_non_nullable
as List<String>,technicalDetails: null == technicalDetails ? _self.technicalDetails : technicalDetails // ignore: cast_nullable_to_non_nullable
as List<String>,businessAngleText: freezed == businessAngleText ? _self.businessAngleText : businessAngleText // ignore: cast_nullable_to_non_nullable
as String?,businessAnglePoints: null == businessAnglePoints ? _self.businessAnglePoints : businessAnglePoints // ignore: cast_nullable_to_non_nullable
as List<String>,userActionItems: null == userActionItems ? _self.userActionItems : userActionItems // ignore: cast_nullable_to_non_nullable
as List<String>,scientificSignificance: freezed == scientificSignificance ? _self.scientificSignificance : scientificSignificance // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,travelAdvisory: null == travelAdvisory ? _self.travelAdvisory : travelAdvisory // ignore: cast_nullable_to_non_nullable
as List<String>,destinationHighlights: null == destinationHighlights ? _self.destinationHighlights : destinationHighlights // ignore: cast_nullable_to_non_nullable
as List<String>,culinarySignificance: null == culinarySignificance ? _self.culinarySignificance : culinarySignificance // ignore: cast_nullable_to_non_nullable
as List<String>,performanceStatistics: freezed == performanceStatistics ? _self.performanceStatistics : performanceStatistics // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,leagueStandings: null == leagueStandings ? _self.leagueStandings : leagueStandings // ignore: cast_nullable_to_non_nullable
as List<String>,diyTips: null == diyTips ? _self.diyTips : diyTips // ignore: cast_nullable_to_non_nullable
as List<String>,designPrinciples: null == designPrinciples ? _self.designPrinciples : designPrinciples // ignore: cast_nullable_to_non_nullable
as List<String>,userExperienceImpact: null == userExperienceImpact ? _self.userExperienceImpact : userExperienceImpact // ignore: cast_nullable_to_non_nullable
as List<String>,gameplayMechanics: null == gameplayMechanics ? _self.gameplayMechanics : gameplayMechanics // ignore: cast_nullable_to_non_nullable
as List<String>,industryImpact: null == industryImpact ? _self.industryImpact : industryImpact // ignore: cast_nullable_to_non_nullable
as List<String>,technicalSpecifications: null == technicalSpecifications ? _self.technicalSpecifications : technicalSpecifications // ignore: cast_nullable_to_non_nullable
as List<String>,articles: freezed == articles ? _self.articles : articles // ignore: cast_nullable_to_non_nullable
as List<Articles>?,domains: freezed == domains ? _self.domains : domains // ignore: cast_nullable_to_non_nullable
as List<Domains>?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Clusters implements Clusters {
  const _Clusters({@JsonKey(name: 'cluster_number') this.clusterNumber, @JsonKey(name: 'unique_domains') this.uniqueDomains, @JsonKey(name: 'number_of_titles') this.numberOfTitles, @JsonKey(name: 'category') this.category, @JsonKey(name: 'title') this.title, @JsonKey(name: 'short_summary') this.shortSummary, @JsonKey(name: 'did_you_know') this.didYouKnow, @ListEmptyStringConverter()@JsonKey(name: 'talking_points') final  List<String>? talkingPoints = const [], @JsonKey(name: 'quote') this.quote, @JsonKey(name: 'quote_author') this.quoteAuthor, @JsonKey(name: 'quote_source_url') this.quoteSourceUrl, @JsonKey(name: 'quote_source_domain') this.quoteSourceDomain, @JsonKey(name: 'location') this.location, @JsonKey(name: 'perspectives') final  List<Perspectives>? perspectives, @JsonKey(name: 'emoji') this.emoji, @JsonKey(name: 'geopolitical_context') this.geopoliticalContext, @JsonKey(name: 'historical_background') this.historicalBackground, @JsonKey(name: 'international_reactions')@ListEmptyStringConverter() final  List<String> internationalReactions = const [], @ListEmptyStringConverter()@JsonKey(name: 'humanitarian_impact') final  List<String> humanitarianImpact = const [], @ListEmptyStringConverter()@JsonKey(name: 'economic_implications') final  List<String> economicImplications = const [], @ListEmptyStringConverter()@JsonKey(name: 'timeline') final  List<String> timeline = const [], @ListEmptyStringConverter()@JsonKey(name: 'future_outlook') final  List<String> futureOutlook = const [], @ListEmptyStringConverter()@JsonKey(name: 'key_players') final  List<String> keyPlayers = const [], @ListEmptyStringConverter()@JsonKey(name: 'technical_details') final  List<String> technicalDetails = const [], @JsonKey(name: 'business_angle_text') this.businessAngleText, @ListEmptyStringConverter()@JsonKey(name: 'business_angle_points') final  List<String> businessAnglePoints = const [], @ListEmptyStringConverter()@JsonKey(name: 'user_action_items') final  List<String> userActionItems = const [], @JsonKey(name: 'scientific_significance') final  List<dynamic>? scientificSignificance, @ListEmptyStringConverter()@JsonKey(name: 'travel_advisory') final  List<String> travelAdvisory = const [], @ListEmptyStringConverter()@JsonKey(name: 'destination_highlights') final  List<String> destinationHighlights = const [], @ListEmptyStringConverter()@JsonKey(name: 'culinary_significance') final  List<String> culinarySignificance = const [], @JsonKey(name: 'performance_statistics') final  List<dynamic>? performanceStatistics, @ListEmptyStringConverter()@JsonKey(name: 'league_standings') final  List<String> leagueStandings = const [], @ListEmptyStringConverter()@JsonKey(name: 'diy_tips') final  List<String> diyTips = const [], @ListEmptyStringConverter()@JsonKey(name: 'design_principles') final  List<String> designPrinciples = const [], @ListEmptyStringConverter()@JsonKey(name: 'user_experience_impact') final  List<String> userExperienceImpact = const [], @ListEmptyStringConverter()@JsonKey(name: 'gameplay_mechanics') final  List<String> gameplayMechanics = const [], @ListEmptyStringConverter()@JsonKey(name: 'industry_impact') final  List<String> industryImpact = const [], @ListEmptyStringConverter()@JsonKey(name: 'technical_specifications') final  List<String> technicalSpecifications = const [], @JsonKey(name: 'articles') final  List<Articles>? articles, @JsonKey(name: 'domains') final  List<Domains>? domains}): _talkingPoints = talkingPoints,_perspectives = perspectives,_internationalReactions = internationalReactions,_humanitarianImpact = humanitarianImpact,_economicImplications = economicImplications,_timeline = timeline,_futureOutlook = futureOutlook,_keyPlayers = keyPlayers,_technicalDetails = technicalDetails,_businessAnglePoints = businessAnglePoints,_userActionItems = userActionItems,_scientificSignificance = scientificSignificance,_travelAdvisory = travelAdvisory,_destinationHighlights = destinationHighlights,_culinarySignificance = culinarySignificance,_performanceStatistics = performanceStatistics,_leagueStandings = leagueStandings,_diyTips = diyTips,_designPrinciples = designPrinciples,_userExperienceImpact = userExperienceImpact,_gameplayMechanics = gameplayMechanics,_industryImpact = industryImpact,_technicalSpecifications = technicalSpecifications,_articles = articles,_domains = domains;
  factory _Clusters.fromJson(Map<String, dynamic> json) => _$ClustersFromJson(json);

@override@JsonKey(name: 'cluster_number') final  int? clusterNumber;
@override@JsonKey(name: 'unique_domains') final  int? uniqueDomains;
@override@JsonKey(name: 'number_of_titles') final  int? numberOfTitles;
@override@JsonKey(name: 'category') final  String? category;
@override@JsonKey(name: 'title') final  String? title;
@override@JsonKey(name: 'short_summary') final  String? shortSummary;
@override@JsonKey(name: 'did_you_know') final  String? didYouKnow;
 final  List<String>? _talkingPoints;
@override@ListEmptyStringConverter()@JsonKey(name: 'talking_points') List<String>? get talkingPoints {
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
@override@JsonKey(name: 'international_reactions')@ListEmptyStringConverter() List<String> get internationalReactions {
  if (_internationalReactions is EqualUnmodifiableListView) return _internationalReactions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_internationalReactions);
}

 final  List<String> _humanitarianImpact;
@override@ListEmptyStringConverter()@JsonKey(name: 'humanitarian_impact') List<String> get humanitarianImpact {
  if (_humanitarianImpact is EqualUnmodifiableListView) return _humanitarianImpact;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_humanitarianImpact);
}

 final  List<String> _economicImplications;
@override@ListEmptyStringConverter()@JsonKey(name: 'economic_implications') List<String> get economicImplications {
  if (_economicImplications is EqualUnmodifiableListView) return _economicImplications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_economicImplications);
}

 final  List<String> _timeline;
@override@ListEmptyStringConverter()@JsonKey(name: 'timeline') List<String> get timeline {
  if (_timeline is EqualUnmodifiableListView) return _timeline;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_timeline);
}

 final  List<String> _futureOutlook;
@override@ListEmptyStringConverter()@JsonKey(name: 'future_outlook') List<String> get futureOutlook {
  if (_futureOutlook is EqualUnmodifiableListView) return _futureOutlook;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_futureOutlook);
}

 final  List<String> _keyPlayers;
@override@ListEmptyStringConverter()@JsonKey(name: 'key_players') List<String> get keyPlayers {
  if (_keyPlayers is EqualUnmodifiableListView) return _keyPlayers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_keyPlayers);
}

 final  List<String> _technicalDetails;
@override@ListEmptyStringConverter()@JsonKey(name: 'technical_details') List<String> get technicalDetails {
  if (_technicalDetails is EqualUnmodifiableListView) return _technicalDetails;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technicalDetails);
}

@override@JsonKey(name: 'business_angle_text') final  String? businessAngleText;
 final  List<String> _businessAnglePoints;
@override@ListEmptyStringConverter()@JsonKey(name: 'business_angle_points') List<String> get businessAnglePoints {
  if (_businessAnglePoints is EqualUnmodifiableListView) return _businessAnglePoints;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_businessAnglePoints);
}

 final  List<String> _userActionItems;
@override@ListEmptyStringConverter()@JsonKey(name: 'user_action_items') List<String> get userActionItems {
  if (_userActionItems is EqualUnmodifiableListView) return _userActionItems;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userActionItems);
}

 final  List<dynamic>? _scientificSignificance;
@override@JsonKey(name: 'scientific_significance') List<dynamic>? get scientificSignificance {
  final value = _scientificSignificance;
  if (value == null) return null;
  if (_scientificSignificance is EqualUnmodifiableListView) return _scientificSignificance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String> _travelAdvisory;
@override@ListEmptyStringConverter()@JsonKey(name: 'travel_advisory') List<String> get travelAdvisory {
  if (_travelAdvisory is EqualUnmodifiableListView) return _travelAdvisory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_travelAdvisory);
}

 final  List<String> _destinationHighlights;
@override@ListEmptyStringConverter()@JsonKey(name: 'destination_highlights') List<String> get destinationHighlights {
  if (_destinationHighlights is EqualUnmodifiableListView) return _destinationHighlights;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_destinationHighlights);
}

 final  List<String> _culinarySignificance;
@override@ListEmptyStringConverter()@JsonKey(name: 'culinary_significance') List<String> get culinarySignificance {
  if (_culinarySignificance is EqualUnmodifiableListView) return _culinarySignificance;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_culinarySignificance);
}

 final  List<dynamic>? _performanceStatistics;
@override@JsonKey(name: 'performance_statistics') List<dynamic>? get performanceStatistics {
  final value = _performanceStatistics;
  if (value == null) return null;
  if (_performanceStatistics is EqualUnmodifiableListView) return _performanceStatistics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String> _leagueStandings;
@override@ListEmptyStringConverter()@JsonKey(name: 'league_standings') List<String> get leagueStandings {
  if (_leagueStandings is EqualUnmodifiableListView) return _leagueStandings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_leagueStandings);
}

 final  List<String> _diyTips;
@override@ListEmptyStringConverter()@JsonKey(name: 'diy_tips') List<String> get diyTips {
  if (_diyTips is EqualUnmodifiableListView) return _diyTips;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_diyTips);
}

 final  List<String> _designPrinciples;
@override@ListEmptyStringConverter()@JsonKey(name: 'design_principles') List<String> get designPrinciples {
  if (_designPrinciples is EqualUnmodifiableListView) return _designPrinciples;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_designPrinciples);
}

 final  List<String> _userExperienceImpact;
@override@ListEmptyStringConverter()@JsonKey(name: 'user_experience_impact') List<String> get userExperienceImpact {
  if (_userExperienceImpact is EqualUnmodifiableListView) return _userExperienceImpact;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userExperienceImpact);
}

 final  List<String> _gameplayMechanics;
@override@ListEmptyStringConverter()@JsonKey(name: 'gameplay_mechanics') List<String> get gameplayMechanics {
  if (_gameplayMechanics is EqualUnmodifiableListView) return _gameplayMechanics;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_gameplayMechanics);
}

 final  List<String> _industryImpact;
@override@ListEmptyStringConverter()@JsonKey(name: 'industry_impact') List<String> get industryImpact {
  if (_industryImpact is EqualUnmodifiableListView) return _industryImpact;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_industryImpact);
}

 final  List<String> _technicalSpecifications;
@override@ListEmptyStringConverter()@JsonKey(name: 'technical_specifications') List<String> get technicalSpecifications {
  if (_technicalSpecifications is EqualUnmodifiableListView) return _technicalSpecifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_technicalSpecifications);
}

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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Clusters&&(identical(other.clusterNumber, clusterNumber) || other.clusterNumber == clusterNumber)&&(identical(other.uniqueDomains, uniqueDomains) || other.uniqueDomains == uniqueDomains)&&(identical(other.numberOfTitles, numberOfTitles) || other.numberOfTitles == numberOfTitles)&&(identical(other.category, category) || other.category == category)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortSummary, shortSummary) || other.shortSummary == shortSummary)&&(identical(other.didYouKnow, didYouKnow) || other.didYouKnow == didYouKnow)&&const DeepCollectionEquality().equals(other._talkingPoints, _talkingPoints)&&(identical(other.quote, quote) || other.quote == quote)&&(identical(other.quoteAuthor, quoteAuthor) || other.quoteAuthor == quoteAuthor)&&(identical(other.quoteSourceUrl, quoteSourceUrl) || other.quoteSourceUrl == quoteSourceUrl)&&(identical(other.quoteSourceDomain, quoteSourceDomain) || other.quoteSourceDomain == quoteSourceDomain)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._perspectives, _perspectives)&&(identical(other.emoji, emoji) || other.emoji == emoji)&&(identical(other.geopoliticalContext, geopoliticalContext) || other.geopoliticalContext == geopoliticalContext)&&(identical(other.historicalBackground, historicalBackground) || other.historicalBackground == historicalBackground)&&const DeepCollectionEquality().equals(other._internationalReactions, _internationalReactions)&&const DeepCollectionEquality().equals(other._humanitarianImpact, _humanitarianImpact)&&const DeepCollectionEquality().equals(other._economicImplications, _economicImplications)&&const DeepCollectionEquality().equals(other._timeline, _timeline)&&const DeepCollectionEquality().equals(other._futureOutlook, _futureOutlook)&&const DeepCollectionEquality().equals(other._keyPlayers, _keyPlayers)&&const DeepCollectionEquality().equals(other._technicalDetails, _technicalDetails)&&(identical(other.businessAngleText, businessAngleText) || other.businessAngleText == businessAngleText)&&const DeepCollectionEquality().equals(other._businessAnglePoints, _businessAnglePoints)&&const DeepCollectionEquality().equals(other._userActionItems, _userActionItems)&&const DeepCollectionEquality().equals(other._scientificSignificance, _scientificSignificance)&&const DeepCollectionEquality().equals(other._travelAdvisory, _travelAdvisory)&&const DeepCollectionEquality().equals(other._destinationHighlights, _destinationHighlights)&&const DeepCollectionEquality().equals(other._culinarySignificance, _culinarySignificance)&&const DeepCollectionEquality().equals(other._performanceStatistics, _performanceStatistics)&&const DeepCollectionEquality().equals(other._leagueStandings, _leagueStandings)&&const DeepCollectionEquality().equals(other._diyTips, _diyTips)&&const DeepCollectionEquality().equals(other._designPrinciples, _designPrinciples)&&const DeepCollectionEquality().equals(other._userExperienceImpact, _userExperienceImpact)&&const DeepCollectionEquality().equals(other._gameplayMechanics, _gameplayMechanics)&&const DeepCollectionEquality().equals(other._industryImpact, _industryImpact)&&const DeepCollectionEquality().equals(other._technicalSpecifications, _technicalSpecifications)&&const DeepCollectionEquality().equals(other._articles, _articles)&&const DeepCollectionEquality().equals(other._domains, _domains));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,clusterNumber,uniqueDomains,numberOfTitles,category,title,shortSummary,didYouKnow,const DeepCollectionEquality().hash(_talkingPoints),quote,quoteAuthor,quoteSourceUrl,quoteSourceDomain,location,const DeepCollectionEquality().hash(_perspectives),emoji,geopoliticalContext,historicalBackground,const DeepCollectionEquality().hash(_internationalReactions),const DeepCollectionEquality().hash(_humanitarianImpact),const DeepCollectionEquality().hash(_economicImplications),const DeepCollectionEquality().hash(_timeline),const DeepCollectionEquality().hash(_futureOutlook),const DeepCollectionEquality().hash(_keyPlayers),const DeepCollectionEquality().hash(_technicalDetails),businessAngleText,const DeepCollectionEquality().hash(_businessAnglePoints),const DeepCollectionEquality().hash(_userActionItems),const DeepCollectionEquality().hash(_scientificSignificance),const DeepCollectionEquality().hash(_travelAdvisory),const DeepCollectionEquality().hash(_destinationHighlights),const DeepCollectionEquality().hash(_culinarySignificance),const DeepCollectionEquality().hash(_performanceStatistics),const DeepCollectionEquality().hash(_leagueStandings),const DeepCollectionEquality().hash(_diyTips),const DeepCollectionEquality().hash(_designPrinciples),const DeepCollectionEquality().hash(_userExperienceImpact),const DeepCollectionEquality().hash(_gameplayMechanics),const DeepCollectionEquality().hash(_industryImpact),const DeepCollectionEquality().hash(_technicalSpecifications),const DeepCollectionEquality().hash(_articles),const DeepCollectionEquality().hash(_domains)]);

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
@JsonKey(name: 'cluster_number') int? clusterNumber,@JsonKey(name: 'unique_domains') int? uniqueDomains,@JsonKey(name: 'number_of_titles') int? numberOfTitles,@JsonKey(name: 'category') String? category,@JsonKey(name: 'title') String? title,@JsonKey(name: 'short_summary') String? shortSummary,@JsonKey(name: 'did_you_know') String? didYouKnow,@ListEmptyStringConverter()@JsonKey(name: 'talking_points') List<String>? talkingPoints,@JsonKey(name: 'quote') String? quote,@JsonKey(name: 'quote_author') String? quoteAuthor,@JsonKey(name: 'quote_source_url') String? quoteSourceUrl,@JsonKey(name: 'quote_source_domain') String? quoteSourceDomain,@JsonKey(name: 'location') String? location,@JsonKey(name: 'perspectives') List<Perspectives>? perspectives,@JsonKey(name: 'emoji') String? emoji,@JsonKey(name: 'geopolitical_context') String? geopoliticalContext,@JsonKey(name: 'historical_background') String? historicalBackground,@JsonKey(name: 'international_reactions')@ListEmptyStringConverter() List<String> internationalReactions,@ListEmptyStringConverter()@JsonKey(name: 'humanitarian_impact') List<String> humanitarianImpact,@ListEmptyStringConverter()@JsonKey(name: 'economic_implications') List<String> economicImplications,@ListEmptyStringConverter()@JsonKey(name: 'timeline') List<String> timeline,@ListEmptyStringConverter()@JsonKey(name: 'future_outlook') List<String> futureOutlook,@ListEmptyStringConverter()@JsonKey(name: 'key_players') List<String> keyPlayers,@ListEmptyStringConverter()@JsonKey(name: 'technical_details') List<String> technicalDetails,@JsonKey(name: 'business_angle_text') String? businessAngleText,@ListEmptyStringConverter()@JsonKey(name: 'business_angle_points') List<String> businessAnglePoints,@ListEmptyStringConverter()@JsonKey(name: 'user_action_items') List<String> userActionItems,@JsonKey(name: 'scientific_significance') List<dynamic>? scientificSignificance,@ListEmptyStringConverter()@JsonKey(name: 'travel_advisory') List<String> travelAdvisory,@ListEmptyStringConverter()@JsonKey(name: 'destination_highlights') List<String> destinationHighlights,@ListEmptyStringConverter()@JsonKey(name: 'culinary_significance') List<String> culinarySignificance,@JsonKey(name: 'performance_statistics') List<dynamic>? performanceStatistics,@ListEmptyStringConverter()@JsonKey(name: 'league_standings') List<String> leagueStandings,@ListEmptyStringConverter()@JsonKey(name: 'diy_tips') List<String> diyTips,@ListEmptyStringConverter()@JsonKey(name: 'design_principles') List<String> designPrinciples,@ListEmptyStringConverter()@JsonKey(name: 'user_experience_impact') List<String> userExperienceImpact,@ListEmptyStringConverter()@JsonKey(name: 'gameplay_mechanics') List<String> gameplayMechanics,@ListEmptyStringConverter()@JsonKey(name: 'industry_impact') List<String> industryImpact,@ListEmptyStringConverter()@JsonKey(name: 'technical_specifications') List<String> technicalSpecifications,@JsonKey(name: 'articles') List<Articles>? articles,@JsonKey(name: 'domains') List<Domains>? domains
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
@override @pragma('vm:prefer-inline') $Res call({Object? clusterNumber = freezed,Object? uniqueDomains = freezed,Object? numberOfTitles = freezed,Object? category = freezed,Object? title = freezed,Object? shortSummary = freezed,Object? didYouKnow = freezed,Object? talkingPoints = freezed,Object? quote = freezed,Object? quoteAuthor = freezed,Object? quoteSourceUrl = freezed,Object? quoteSourceDomain = freezed,Object? location = freezed,Object? perspectives = freezed,Object? emoji = freezed,Object? geopoliticalContext = freezed,Object? historicalBackground = freezed,Object? internationalReactions = null,Object? humanitarianImpact = null,Object? economicImplications = null,Object? timeline = null,Object? futureOutlook = null,Object? keyPlayers = null,Object? technicalDetails = null,Object? businessAngleText = freezed,Object? businessAnglePoints = null,Object? userActionItems = null,Object? scientificSignificance = freezed,Object? travelAdvisory = null,Object? destinationHighlights = null,Object? culinarySignificance = null,Object? performanceStatistics = freezed,Object? leagueStandings = null,Object? diyTips = null,Object? designPrinciples = null,Object? userExperienceImpact = null,Object? gameplayMechanics = null,Object? industryImpact = null,Object? technicalSpecifications = null,Object? articles = freezed,Object? domains = freezed,}) {
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
as List<String>,humanitarianImpact: null == humanitarianImpact ? _self._humanitarianImpact : humanitarianImpact // ignore: cast_nullable_to_non_nullable
as List<String>,economicImplications: null == economicImplications ? _self._economicImplications : economicImplications // ignore: cast_nullable_to_non_nullable
as List<String>,timeline: null == timeline ? _self._timeline : timeline // ignore: cast_nullable_to_non_nullable
as List<String>,futureOutlook: null == futureOutlook ? _self._futureOutlook : futureOutlook // ignore: cast_nullable_to_non_nullable
as List<String>,keyPlayers: null == keyPlayers ? _self._keyPlayers : keyPlayers // ignore: cast_nullable_to_non_nullable
as List<String>,technicalDetails: null == technicalDetails ? _self._technicalDetails : technicalDetails // ignore: cast_nullable_to_non_nullable
as List<String>,businessAngleText: freezed == businessAngleText ? _self.businessAngleText : businessAngleText // ignore: cast_nullable_to_non_nullable
as String?,businessAnglePoints: null == businessAnglePoints ? _self._businessAnglePoints : businessAnglePoints // ignore: cast_nullable_to_non_nullable
as List<String>,userActionItems: null == userActionItems ? _self._userActionItems : userActionItems // ignore: cast_nullable_to_non_nullable
as List<String>,scientificSignificance: freezed == scientificSignificance ? _self._scientificSignificance : scientificSignificance // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,travelAdvisory: null == travelAdvisory ? _self._travelAdvisory : travelAdvisory // ignore: cast_nullable_to_non_nullable
as List<String>,destinationHighlights: null == destinationHighlights ? _self._destinationHighlights : destinationHighlights // ignore: cast_nullable_to_non_nullable
as List<String>,culinarySignificance: null == culinarySignificance ? _self._culinarySignificance : culinarySignificance // ignore: cast_nullable_to_non_nullable
as List<String>,performanceStatistics: freezed == performanceStatistics ? _self._performanceStatistics : performanceStatistics // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,leagueStandings: null == leagueStandings ? _self._leagueStandings : leagueStandings // ignore: cast_nullable_to_non_nullable
as List<String>,diyTips: null == diyTips ? _self._diyTips : diyTips // ignore: cast_nullable_to_non_nullable
as List<String>,designPrinciples: null == designPrinciples ? _self._designPrinciples : designPrinciples // ignore: cast_nullable_to_non_nullable
as List<String>,userExperienceImpact: null == userExperienceImpact ? _self._userExperienceImpact : userExperienceImpact // ignore: cast_nullable_to_non_nullable
as List<String>,gameplayMechanics: null == gameplayMechanics ? _self._gameplayMechanics : gameplayMechanics // ignore: cast_nullable_to_non_nullable
as List<String>,industryImpact: null == industryImpact ? _self._industryImpact : industryImpact // ignore: cast_nullable_to_non_nullable
as List<String>,technicalSpecifications: null == technicalSpecifications ? _self._technicalSpecifications : technicalSpecifications // ignore: cast_nullable_to_non_nullable
as List<String>,articles: freezed == articles ? _self._articles : articles // ignore: cast_nullable_to_non_nullable
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
