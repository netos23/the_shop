// assuing this is the root widget of your App
import 'package:flutter/material.dart';
import 'package:the_store_app/navigation/app_router.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context){
    return MaterialApp.router(
      theme: ThemeData(
        useMaterial3: true,
      ),
      routerConfig: _appRouter.config(),
    );
  }
}