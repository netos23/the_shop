import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/error_handler/default_error_handler.dart';

class AppDependency extends StatelessWidget {
  const AppDependency({
    Key? key,
    this.child,
  }) : super(key: key);

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<ErrorHandler>(
          create: (_) => DefaultErrorHandler(),
        ),
      ],
      child: child,
    );
  }
}
