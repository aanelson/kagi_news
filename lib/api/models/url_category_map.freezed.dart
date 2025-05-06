// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'url_category_map.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UrlCategoryMapList {

 int? get timestamp; List<UrlCategoryMap> get categories;
/// Create a copy of UrlCategoryMapList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlCategoryMapListCopyWith<UrlCategoryMapList> get copyWith => _$UrlCategoryMapListCopyWithImpl<UrlCategoryMapList>(this as UrlCategoryMapList, _$identity);

  /// Serializes this UrlCategoryMapList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlCategoryMapList&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other.categories, categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(categories));

@override
String toString() {
  return 'UrlCategoryMapList(timestamp: $timestamp, categories: $categories)';
}


}

/// @nodoc
abstract mixin class $UrlCategoryMapListCopyWith<$Res>  {
  factory $UrlCategoryMapListCopyWith(UrlCategoryMapList value, $Res Function(UrlCategoryMapList) _then) = _$UrlCategoryMapListCopyWithImpl;
@useResult
$Res call({
 int? timestamp, List<UrlCategoryMap> categories
});




}
/// @nodoc
class _$UrlCategoryMapListCopyWithImpl<$Res>
    implements $UrlCategoryMapListCopyWith<$Res> {
  _$UrlCategoryMapListCopyWithImpl(this._self, this._then);

  final UrlCategoryMapList _self;
  final $Res Function(UrlCategoryMapList) _then;

/// Create a copy of UrlCategoryMapList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? timestamp = freezed,Object? categories = null,}) {
  return _then(_self.copyWith(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<UrlCategoryMap>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UrlCategoryMapList implements UrlCategoryMapList {
   _UrlCategoryMapList({this.timestamp, final  List<UrlCategoryMap> categories = const []}): _categories = categories;
  factory _UrlCategoryMapList.fromJson(Map<String, dynamic> json) => _$UrlCategoryMapListFromJson(json);

@override final  int? timestamp;
 final  List<UrlCategoryMap> _categories;
@override@JsonKey() List<UrlCategoryMap> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}


/// Create a copy of UrlCategoryMapList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UrlCategoryMapListCopyWith<_UrlCategoryMapList> get copyWith => __$UrlCategoryMapListCopyWithImpl<_UrlCategoryMapList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UrlCategoryMapListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UrlCategoryMapList&&(identical(other.timestamp, timestamp) || other.timestamp == timestamp)&&const DeepCollectionEquality().equals(other._categories, _categories));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,timestamp,const DeepCollectionEquality().hash(_categories));

@override
String toString() {
  return 'UrlCategoryMapList(timestamp: $timestamp, categories: $categories)';
}


}

/// @nodoc
abstract mixin class _$UrlCategoryMapListCopyWith<$Res> implements $UrlCategoryMapListCopyWith<$Res> {
  factory _$UrlCategoryMapListCopyWith(_UrlCategoryMapList value, $Res Function(_UrlCategoryMapList) _then) = __$UrlCategoryMapListCopyWithImpl;
@override @useResult
$Res call({
 int? timestamp, List<UrlCategoryMap> categories
});




}
/// @nodoc
class __$UrlCategoryMapListCopyWithImpl<$Res>
    implements _$UrlCategoryMapListCopyWith<$Res> {
  __$UrlCategoryMapListCopyWithImpl(this._self, this._then);

  final _UrlCategoryMapList _self;
  final $Res Function(_UrlCategoryMapList) _then;

/// Create a copy of UrlCategoryMapList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? timestamp = freezed,Object? categories = null,}) {
  return _then(_UrlCategoryMapList(
timestamp: freezed == timestamp ? _self.timestamp : timestamp // ignore: cast_nullable_to_non_nullable
as int?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<UrlCategoryMap>,
  ));
}


}


/// @nodoc
mixin _$UrlCategoryMap {

 String get name; String get file;
/// Create a copy of UrlCategoryMap
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UrlCategoryMapCopyWith<UrlCategoryMap> get copyWith => _$UrlCategoryMapCopyWithImpl<UrlCategoryMap>(this as UrlCategoryMap, _$identity);

  /// Serializes this UrlCategoryMap to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UrlCategoryMap&&(identical(other.name, name) || other.name == name)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,file);

@override
String toString() {
  return 'UrlCategoryMap(name: $name, file: $file)';
}


}

/// @nodoc
abstract mixin class $UrlCategoryMapCopyWith<$Res>  {
  factory $UrlCategoryMapCopyWith(UrlCategoryMap value, $Res Function(UrlCategoryMap) _then) = _$UrlCategoryMapCopyWithImpl;
@useResult
$Res call({
 String name, String file
});




}
/// @nodoc
class _$UrlCategoryMapCopyWithImpl<$Res>
    implements $UrlCategoryMapCopyWith<$Res> {
  _$UrlCategoryMapCopyWithImpl(this._self, this._then);

  final UrlCategoryMap _self;
  final $Res Function(UrlCategoryMap) _then;

/// Create a copy of UrlCategoryMap
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? file = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UrlCategoryMap implements UrlCategoryMap {
   _UrlCategoryMap({required this.name, required this.file});
  factory _UrlCategoryMap.fromJson(Map<String, dynamic> json) => _$UrlCategoryMapFromJson(json);

@override final  String name;
@override final  String file;

/// Create a copy of UrlCategoryMap
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UrlCategoryMapCopyWith<_UrlCategoryMap> get copyWith => __$UrlCategoryMapCopyWithImpl<_UrlCategoryMap>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UrlCategoryMapToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UrlCategoryMap&&(identical(other.name, name) || other.name == name)&&(identical(other.file, file) || other.file == file));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,file);

@override
String toString() {
  return 'UrlCategoryMap(name: $name, file: $file)';
}


}

/// @nodoc
abstract mixin class _$UrlCategoryMapCopyWith<$Res> implements $UrlCategoryMapCopyWith<$Res> {
  factory _$UrlCategoryMapCopyWith(_UrlCategoryMap value, $Res Function(_UrlCategoryMap) _then) = __$UrlCategoryMapCopyWithImpl;
@override @useResult
$Res call({
 String name, String file
});




}
/// @nodoc
class __$UrlCategoryMapCopyWithImpl<$Res>
    implements _$UrlCategoryMapCopyWith<$Res> {
  __$UrlCategoryMapCopyWithImpl(this._self, this._then);

  final _UrlCategoryMap _self;
  final $Res Function(_UrlCategoryMap) _then;

/// Create a copy of UrlCategoryMap
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? file = null,}) {
  return _then(_UrlCategoryMap(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,file: null == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
