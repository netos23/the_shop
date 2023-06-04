import 'package:flutter/material.dart';

class AppConfig extends ChangeNotifier {
  String _baseUrl;
  String _dadataKey;

  set dadataKey(String value) {
    notifyListeners();
    _dadataKey = value;
  }

  String get baseUrl => _baseUrl;

  String get dadataKey => _dadataKey;

  set baseUrl(String value) {
    notifyListeners();
    _baseUrl = value;
  }

  Duration _timeout;

  Duration get timeout => _timeout;

  set timeout(Duration value) {
    notifyListeners();
    _timeout = value;
  }

  AppConfig({
    required String baseUrl,
    required Duration timeout,
    required String dadataKey,
  })  : _baseUrl = baseUrl,
        _timeout = timeout,
        _dadataKey = dadataKey;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppConfig &&
          runtimeType == other.runtimeType &&
          _baseUrl == other._baseUrl &&
          _timeout == other._timeout;

  @override
  int get hashCode => _baseUrl.hashCode ^ _timeout.hashCode;
}
