import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_store_app/domain/auth/auth_interceptor.dart';
import 'package:the_store_app/domain/auth/native_auth_srvice.dart';
import 'package:the_store_app/domain/auth/web_auth_service.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/domain/geo/city_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/entity/geo/city.dart';
import 'package:the_store_app/error_handler/default_error_handler.dart';

class DiContainer implements AsyncInitLifecycleComponent {
  static final DiContainer _instance = DiContainer._internal();

  factory DiContainer() => _instance;

  DiContainer._internal();

  final KiwiContainer container = KiwiContainer();

  @override
  Future<void> asyncInit([AppConfig? config]) async {
    // error handler
    final errorHandler = DefaultErrorHandler()..init();
    container.registerInstance<ErrorHandler>(errorHandler);
    container.registerInstance<DefaultErrorHandler>(errorHandler);

    // delivery
    final deliveryRepository = Repository<DeliveryMethod>(
      key: 'selected-delivery',
      jsonFactory: DeliveryMethod.fromJson,
    );
    final deliveryService = DeliveryService(deliveryRepo: deliveryRepository);
    container.registerInstance(deliveryService);

    // geo
    final cityRepository = Repository<City>(
      key: 'selected-city',
      jsonFactory: City.fromJson,
    );
    final cityService = CityService(cityRepo: cityRepository);
    container.registerInstance(cityService);


    // dio
    final dio = Dio();
    dio.options
      ..baseUrl = config?.baseUrl ?? ''
      ..connectTimeout = config?.timeout
      ..receiveTimeout = config?.timeout
      ..sendTimeout = config?.timeout;

    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger());
    }

    dio.interceptors.add(JwtInterceptor());
    container.registerInstance(dio);

    // auth
    final AsyncInitLifecycleComponent authService;

    if (kIsWeb) {
      final webAuthService = StoreWebAuthService(
        dio: dio,
        errorHandler: errorHandler,
      );
      authService = webAuthService;
      container.registerInstance<AuthService>(webAuthService);
    } else {
      final nativeAuthService = StoreNativeAuthService(
        dio: dio,
        errorHandler: errorHandler,
      );
      authService = nativeAuthService;
      container.registerInstance<AuthService>(nativeAuthService);
    }

    await Future.wait([
      deliveryService.asyncInit(),
      cityService.asyncInit(),
      authService.asyncInit(),
    ]);
  }

  T call<T>() => container.call();
}
