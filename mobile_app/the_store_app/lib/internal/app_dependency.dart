import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/data/geo/geo_client.dart';
import 'package:the_store_app/domain/delivery/delivery_service.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({
    Key? key,
    this.child,
    required this.config,
    required this.debugConfig,
    required this.errorHandler,
  }) : super(key: key);

  final DebugConfig debugConfig;
  final AppConfig config;
  final Widget? child;
  final ErrorHandler errorHandler;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      key: ValueKey(config.hashCode),
      providers: [
        ChangeNotifierProvider.value(
          value: config,
        ),
        ChangeNotifierProvider.value(
          value: debugConfig,
        ),
        Provider(
          create: (context) {
            var dio = Dio();
            dio.options
              ..baseUrl = config.baseUrl
              ..connectTimeout = config.timeout
              ..receiveTimeout = config.timeout
              ..sendTimeout = config.timeout;
            dio.interceptors.add(PrettyDioLogger());
            return dio;
          },
        ),
        Provider<GeoClient>(
          create: (context) => GeoClient(context.read()),
        ),
        Provider(
          create: (_) => Repository<DeliveryMethod>(
            key: 'selected-delivery',
            jsonFactory: DeliveryMethod.fromJson,
          ),
        ),
        Provider(
          create: (context) => DeliveryService(
            deliveryRepo: context.read(),
          ),
          dispose: (_, s) => s.dispose(),
        ),
        Provider.value(
          value: errorHandler,
        ),
      ],
      child: child,
    );
  }
}
