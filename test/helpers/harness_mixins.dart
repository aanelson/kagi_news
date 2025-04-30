import 'dart:convert';
import 'dart:io';

import 'package:widget_test_harness/widget_test_harness.dart';

base mixin FileLoad on FlutterTestHarness {
  dynamic loadJson(String fileName) {
    final file = File(fileName);
    return jsonDecode(file.readAsStringSync());
  }
}
