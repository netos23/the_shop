import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_code_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthCodeScreen module
@RoutePage()
class AuthCodeScreenWidget extends ElementaryWidget<IAuthCodeScreenWidgetModel> {
  const AuthCodeScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthCodeScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthCodeScreenWidgetModel wm) {
    return Container();
  }
}
