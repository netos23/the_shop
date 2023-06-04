
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:kiwi/kiwi.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:the_store_app/store_module/domain/auth/auth_interceptor.dart';
import 'package:the_store_app/store_module/domain/auth/native_auth_srvice.dart';
import 'package:the_store_app/store_module/domain/auth/web_auth_service.dart';
import 'package:the_store_app/store_module/domain/delivery/delivery_service.dart';
import 'package:the_store_app/store_module/domain/geo/city_service.dart';
import 'package:the_store_app/store_module/entity/delivery/delivery_method.dart';
import 'package:the_store_app/store_module/entity/geo/city.dart';
import 'package:the_store_app/store_module/error_handler/default_error_handler.dart';

import '../../src/config/app_config.dart';
import '../../src/data/persistence/repository.dart';
import '../../util/lifecycle_component.dart';

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



    await Future.wait([
      deliveryService.asyncInit(),
      cityService.asyncInit(),
    ]);
  }

  T call<T>() => container.call();
}
