import 'package:freezed_annotation/freezed_annotation.dart';

class ListEmptyStringConverter implements JsonConverter<List<String>, dynamic> {
  const ListEmptyStringConverter();
  @override
  List<String> fromJson(json) {
    if (json is List) {
      return json.whereType<String>().toList();
    } else if (json is String) {
      if (json.isEmpty) {
        return const [];
      }
      return [json];
    } else if (json == null) {
      return const [];
    } else {
      throw Exception('Invalid type for List<String>');
    }
  }

  @override
  toJson(List<String> object) {
    if (object.isEmpty) {
      return null;
    } else if (object.length == 1) {
      return object.first;
    } else {
      return object;
    }
  }
}
