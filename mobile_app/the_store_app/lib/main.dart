import 'package:core/core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/internal/app.dart';
import 'package:the_store_app/internal/app_dependency.dart';

import 'error_handler/default_error_handler.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

/*  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );*/

  final errorHandler = DefaultErrorHandler();

  FlutterError.onError = (details) {
    if (!kIsWeb) {
      // FirebaseCrashlytics.instance.recordFlutterFatalError(details);
    }
    FlutterError.presentError(details);
    // logger.e('Error occurred', details);
  };

  PlatformDispatcher.instance.onError = (error, stack) {
    errorHandler.handleError(
      error,
      stackTrace: stack,
      fatal: true,
    );
    return true;
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
      errorHandler: errorHandler,
      child: App(),
    ),
  );
}
