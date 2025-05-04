// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_categories.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NewsCategories {

 int? get timestamp; List<NewsCategory> get categories;
/// Create a copy of NewsCategories
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsCategoriesCopyWith<NewsCategories> get copyWith => _$NewsCategoriesCopyWithImpl<NewsCategories>(this as NewsCategories, _$identity);

  /// Serializes this NewsCategories to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsCategories&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'NewsCategories(timestamp: $timestamp, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $NewsCategoriesCopyWith<$Res>  {
  factory $NewsCategoriesCopyWith(NewsCategories value, $Res Function(NewsCategories) _then) = _$NewsCategoriesCopyWithImpl;
@useResult
$Res call({
 int? timestamp, List<NewsCategory> categories
});




}
/// @nodoc
class _$NewsCategoriesCopyWithImpl<$Res>
    implements $NewsCategoriesCopyWith<$Res> {
  _$NewsCategoriesCopyWithImpl(this._self, this._then);

  final NewsCategories _self;
  final $Res Function(NewsCategories) _then;

/// Create a copy of NewsCategories
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? categories = null,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<NewsCategory>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NewsCategories implements NewsCategories {
   _NewsCategories({this.timestamp, final  List<NewsCategory> categories = const []}): _categories = categories;
  factory _NewsCategories.fromJson(Map<String, dynamic> json) => _$NewsCategoriesFromJson(json);

@override final  int? timestamp;
 final  List<NewsCategory> _categories;
@override@JsonKey() List<NewsCategory> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of NewsCategories
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsCategoriesCopyWith<_NewsCategories> get copyWith => __$NewsCategoriesCopyWithImpl<_NewsCategories>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsCategoriesToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsCategories&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'NewsCategories(timestamp: $timestamp, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$NewsCategoriesCopyWith<$Res> implements $NewsCategoriesCopyWith<$Res> {
  factory _$NewsCategoriesCopyWith(_NewsCategories value, $Res Function(_NewsCategories) _then) = __$NewsCategoriesCopyWithImpl;
@override @useResult
$Res call({
 int? timestamp, List<NewsCategory> categories
});




}
/// @nodoc
class __$NewsCategoriesCopyWithImpl<$Res>
    implements _$NewsCategoriesCopyWith<$Res> {
  __$NewsCategoriesCopyWithImpl(this._self, this._then);

  final _NewsCategories _self;
  final $Res Function(_NewsCategories) _then;

/// Create a copy of NewsCategories
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? categories = null,}) {
  return _then(_NewsCategories(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<NewsCategory>,
  ));
}


}


/// @nodoc
mixin _$NewsCategory {

 String? get name; String? get file;
/// Create a copy of NewsCategory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NewsCategoryCopyWith<NewsCategory> get copyWith => _$NewsCategoryCopyWithImpl<NewsCategory>(this as NewsCategory, _$identity);

  /// Serializes this NewsCategory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NewsCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,file);

@override
String toString() {
  return 'NewsCategory(name: $name, file: $file)';
}


}

/// @nodoc
abstract mixin class $NewsCategoryCopyWith<$Res>  {
  factory $NewsCategoryCopyWith(NewsCategory value, $Res Function(NewsCategory) _then) = _$NewsCategoryCopyWithImpl;
@useResult
$Res call({
 String? name, String? file
});




}
/// @nodoc
class _$NewsCategoryCopyWithImpl<$Res>
    implements $NewsCategoryCopyWith<$Res> {
  _$NewsCategoryCopyWithImpl(this._self, this._then);

  final NewsCategory _self;
  final $Res Function(NewsCategory) _then;

/// Create a copy of NewsCategory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? file = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _NewsCategory implements NewsCategory {
   _NewsCategory({this.name, this.file});
  factory _NewsCategory.fromJson(Map<String, dynamic> json) => _$NewsCategoryFromJson(json);

@override final  String? name;
@override final  String? file;

/// Create a copy of NewsCategory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$NewsCategoryCopyWith<_NewsCategory> get copyWith => __$NewsCategoryCopyWithImpl<_NewsCategory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NewsCategoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _NewsCategory&&(identical(other.name, name) || other.name == name)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,file);

@override
String toString() {
  return 'NewsCategory(name: $name, file: $file)';
}


}

/// @nodoc
abstract mixin class _$NewsCategoryCopyWith<$Res> implements $NewsCategoryCopyWith<$Res> {
  factory _$NewsCategoryCopyWith(_NewsCategory value, $Res Function(_NewsCategory) _then) = __$NewsCategoryCopyWithImpl;
@override @useResult
$Res call({
 String? name, String? file
});




}
/// @nodoc
class __$NewsCategoryCopyWithImpl<$Res>
    implements _$NewsCategoryCopyWith<$Res> {
  __$NewsCategoryCopyWithImpl(this._self, this._then);

  final _NewsCategory _self;
  final $Res Function(_NewsCategory) _then;

/// Create a copy of NewsCategory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? file = freezed,}) {
  return _then(_NewsCategory(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
