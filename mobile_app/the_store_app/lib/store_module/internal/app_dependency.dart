import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/store_module/data/geo/geo_client.dart';
import 'package:the_store_app/store_module/data/shop/shop_client.dart';
import 'package:the_store_app/store_module/internal/di_container.dart';
import 'package:the_store_app/store_module/data/order/order_client.dart';
import 'package:the_store_app/store_module/data/user/user_client.dart';

import '../../src/config/app_config.dart';
import '../../src/config/debug_config.dart';

class SpecialAppDependency extends StatelessWidget {
  const SpecialAppDependency({
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
          create: (context) => GeoClient(DiContainer()<Dio>()),
        ),
        Provider<OrderClient>(
          create: (context) => OrderClient(DiContainer()<Dio>()),
        ),
        Provider<UserClient>(
          create: (context) => UserClient(DiContainer()<Dio>()),
        ),
        Provider(
          create: (context) => ShopClient(DiContainer()<Dio>()),
        ),
        Provider.value(
          value: DiContainer()<ErrorHandler>(),
        ),
      ],
      child: child,
    );
  }
}
