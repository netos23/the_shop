import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'serializable.dart';



class Repository<T extends Serializable<T>> {
  final String key;
  final JsonFactory<T> jsonFactory;

  Repository({
    required this.key,
    required this.jsonFactory,
  });

  Future<T?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final rawData = prefs.getString(key);

    if (rawData == null) {
      return null;
    }

    final json =
        kIsWeb ? jsonDecode(rawData) : await compute(jsonDecode, rawData);

    return jsonFactory(json);
  }

  Future<T> save(
    T method,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final json = method.toJson();
    final rawData = kIsWeb ? jsonEncode(json) : await compute(jsonEncode, json);

    prefs.setString(key, rawData);
    return method;
  }

  Future<T?> remove() async {
    final lastValue = await load();
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
    return lastValue;
  }
}
