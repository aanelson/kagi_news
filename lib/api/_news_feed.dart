// import 'package:freezed_annotation/freezed_annotation.dart';

// @freezed
// class NewsFeed with _$NewsFeed {
//   factory NewsFeed({
//     required String category,
//     required int timestamp,
//     required int read,
//     required List<Cluster> clusters,
//   }) = _NewsFeed;

//   factory NewsFeed.fromJson(Map<String, dynamic> json) =>
//       _$NewsFeedFromJson(json);
// }

// @freezed
// class Cluster with _$Cluster {
//   factory Cluster({
//     required int clusterNumber,
//     int? uniqueDomains,
//     int? numberOfTitles,
//     @Default('') String category,
//     required String title,
//     required String shortSummary,
//     @Default('') String didYouKnow,
//     @Default({}) Map<int, String> talkingPoints,
//     @Default('') String quote,
//     @Default('') String quoteAuthor,
//     @Default('') String quoteSourceUrl,
//     @Default('') String quoteSourceDomain,
//     @Default('') String location,
//     @Default([]) List<dynamic> perspectives,
//     @Default('') String geopoliticalContext,
//     @Default('') String historicalBackground,
//     @Default({}) Map<int, String> internationalReactions,
//     @Default('') String humanitarianImpact,

//   }) = _Cluster;

//   factory Cluster.fromJson(Map<String, dynamic> json) =>
//       _$ClusterFromJson(json);
//   Map<String, dynamic> toJson() => _$ClusterToJson(this);
// }
