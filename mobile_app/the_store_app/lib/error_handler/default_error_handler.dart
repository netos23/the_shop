import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:the_store_app/internal/logger.dart';

class DefaultErrorHandler extends ErrorHandler implements LifecycleComponent {

  @override
  void init() {
    PlatformDispatcher.instance.onError = (error, stack) {
      handleError(
        error,
        stackTrace: stack,
        fatal: true,
      );
      return true;
    };
  }

  @override
  void handleError(Object error, {StackTrace? stackTrace, bool fatal = false}) {
    if (!kIsWeb) {
      FirebaseCrashlytics.instance.recordError(
        error,
        stackTrace,
        fatal: fatal,
        printDetails: false,
      );
    }
    logger.e('Error occurred', error, stackTrace);
  }

  @override
  void dispose() {}
}
