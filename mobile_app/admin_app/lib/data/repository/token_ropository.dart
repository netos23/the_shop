import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TokenRepository extends ChangeNotifier {
  TokenRepository({
    bool useCaching = true,
  }) : _useCaching = useCaching;

  bool get auth => _refreshToken != null;

  String? get accessToken => _accessToken;

  String? get refreshToken => _refreshToken;

  /// JWT token.
  String? _accessToken;

  /// JWT refresh token.
  String? _refreshToken;

  /// Use to enable/disable token caching. Default value is true
  final bool _useCaching;

  /// Getting tokens from cache.
  Future<void> initTokens() async {
    if (_useCaching) {
      final storage = await SharedPreferences.getInstance();
      _accessToken = storage.getString('accessToken');
      _refreshToken = storage.getString('refreshToken');
    }
    notifyListeners();
    // _accessToken = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoiYWNjZXNzIiwiZXhwIjoxNjg3NTUzODczLCJpYXQiOjE2ODQ5NjE4NzMsImp0aSI6ImE0NmZiNDBlMzdmZTRlMzJiZjhlZGQxZjY2ZmQyNGEwIiwidXNlcl9pZCI6MiwidXNlcl91dWlkIjpudWxsLCJpc192ZXJpZmllZCI6dHJ1ZX0.SGzZCzGopLxa7_8f3D7eBEuUIsgcU0PKqgflqmg4wR0';
  }

  Future<void> deleteTokens() async {
    _accessToken = null;
    _refreshToken = null;

    notifyListeners();

    final storage = await SharedPreferences.getInstance();
    await storage.remove('accessToken');
    await storage.remove('refreshToken');
  }

  void saveTokens({
    required String accessToken,
    required String refreshToken,
  }) async {
    _accessToken = accessToken;
    _refreshToken = refreshToken;
    notifyListeners();
    if (_useCaching) {
      await _persistTokens();
    }
  }

  Future<void> _persistTokens() async {
    final storage = await SharedPreferences.getInstance();
    await storage.setString('accessToken', _accessToken!);
    await storage.setString('refreshToken', _refreshToken!);
  }
}
