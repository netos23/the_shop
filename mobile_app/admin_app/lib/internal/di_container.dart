import 'package:admin_app/domain/user/native_auth_srvice.dart';
import 'package:admin_app/domain/user/web_auth_service.dart';
import 'package:admin_app/error_handler/default_error_handler.dart';
import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:kiwi/kiwi.dart';

class DiContainer implements AsyncInitLifecycleComponent {
  static final DiContainer _instance = DiContainer._internal();

  factory DiContainer() => _instance;

  DiContainer._internal();

  final KiwiContainer container = KiwiContainer();

  @override
  Future<void> asyncInit() async {
    // error handler
    final errorHandler = DefaultErrorHandler()..init();
    container.registerInstance<ErrorHandler>(errorHandler);
    container.registerInstance<DefaultErrorHandler>(errorHandler);

    // auth
    final authService = kIsWeb
        ? AdminWebAuthService(errorHandler: errorHandler)
        : AdminNativeAuthService(errorHandler: errorHandler);
    container.registerInstance(authService);

    // dio
    container.registerSingleton(
      (_) => Dio(),
    );

    await Future.wait([
      authService.asyncInit(),
    ]);
  }

  T call<T>() => container.call();
}
