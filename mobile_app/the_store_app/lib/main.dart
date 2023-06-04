import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/internal/app_dependency.dart';
import 'package:the_store_app/src/config/app_config.dart';
import 'package:the_store_app/src/config/debug_config.dart';
import 'package:the_store_app/store_module/internal/app_dependency.dart';
import 'package:the_store_app/store_module/internal/di_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';
import 'internal/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final appConfig = AppConfig(
    dadataKey: '603bb84c98131f6cc1c0a20dd1a34f349307b086',
    baseUrl: 'https://the-store.fbtw.ru/',
    timeout: const Duration(seconds: 15),
  );

  await DiContainer().asyncInit(
    appConfig,
  );

  FlutterError.onError = (details) {
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    }
  };

  await AppComponents().init();

  runApp(
    SpecialAppDependency(
      config: appConfig,
      debugConfig: DebugConfig(
        debugShowMaterialGrid: false,
        showPerformanceOverlay: false,
        checkerboardOffscreenLayers: false,
        checkerboardRasterCacheImages: false,
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
      ),
      child: AppDependency(
        app: App(),
      ),
    ),
  );
}
