import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/firebase_options.dart';
import 'package:the_store_app/internal/app.dart';
import 'package:the_store_app/internal/app_dependency.dart';
import 'package:the_store_app/internal/di_container.dart';

import 'error_handler/default_error_handler.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await DiContainer().asyncInit();

  FlutterError.onError = (details) {
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    }
  };

  runApp(
    AppDependency(
      debugConfig: DebugConfig(
        debugShowMaterialGrid: false,
        showPerformanceOverlay: false,
        checkerboardOffscreenLayers: false,
        checkerboardRasterCacheImages: false,
        showSemanticsDebugger: false,
        debugShowCheckedModeBanner: false,
      ),
      config: AppConfig(
        baseUrl: 'https://the-store.fbtw.ru/',
        timeout: const Duration(seconds: 15),
      ),
      child: App(),
    ),
  );
}
