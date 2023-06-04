import 'package:auto_route/annotations.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'auth_phone_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for AuthPhoneScreen module
@RoutePage()
class AuthPhoneScreenWidget
    extends ElementaryWidget<IAuthPhoneScreenWidgetModel> {
  const AuthPhoneScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultAuthPhoneScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IAuthPhoneScreenWidgetModel wm) {
    return Container();
  }
}
