import 'dart:convert';

class CommonList {
  static List<Map<String, String>> values = [];

  static void addValue(String key, String value) {
    values.add({key: value});
  }

  static String toJson() {
    return jsonEncode(values);
  }
}
