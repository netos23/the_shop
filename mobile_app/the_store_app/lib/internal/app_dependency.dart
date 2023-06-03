import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/data/geo/geo_client.dart';
import 'package:the_store_app/data/shop/shop_client.dart';
import 'package:the_store_app/internal/di_container.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({
    Key? key,
    this.child,
    required this.config,
    required this.debugConfig,
  }) : super(key: key);

  final DebugConfig debugConfig;
  final AppConfig config;
  final Widget? child;

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
            final  dio = DiContainer()<Dio>();

            dio.options
              ..baseUrl = config.baseUrl
              ..connectTimeout = config.timeout
              ..receiveTimeout = config.timeout
              ..sendTimeout = config.timeout;

            if(kDebugMode) {
              dio.interceptors.add(PrettyDioLogger());
            }

            return dio;
          },
        ),
        Provider(
          create: (context) => GeoClient(context.read()),
        ),
        Provider(
          create: (context) => ShopClient(context.read()),
        ),
        Provider.value(
          value: DiContainer()<ErrorHandler>(),
        ),
      ],
      child: child,
    );
  }
}
