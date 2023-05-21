import 'package:flutter/material.dart';

class AppConfig extends ChangeNotifier {
  String _baseUrl;

  String get baseUrl => _baseUrl;

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
  })  : _baseUrl = baseUrl,
        _timeout = timeout;

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
