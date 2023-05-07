import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/internal/app.dart';
import 'package:the_store_app/internal/app_dependcy.dart';

void main() {
  runApp(
    AppDependency(
      child: App(),
    ),
  );
}
