import 'package:core/core.dart';
import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/data/geo/geo_client.dart';

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
    return ChangeNotifierProvider.value(
      value: config,
      builder: (context, child) {
        final config = context.watch<AppConfig>();

        return MultiProvider(
          key: ValueKey(config.hashCode),
          providers: [
            Provider.value(
              value: errorHandler,
            ),
            Provider<Dio>(
              create: (_) {
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
          ],
          child: child,
        );
      },
    );
  }
}
