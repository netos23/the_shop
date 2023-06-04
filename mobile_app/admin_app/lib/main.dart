import 'package:admin_app/internal/app_components.dart';
import 'package:admin_app/internal/app_dependency.dart';
import 'package:flutter/material.dart';

import 'internal/app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await AppComponents().init();

  runApp(
    AppDependency(
      app: App(),
    ),
  );
}
