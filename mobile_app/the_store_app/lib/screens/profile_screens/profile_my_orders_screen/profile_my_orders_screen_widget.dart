import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_my_orders_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileMyOrdersScreen module
class ProfileMyOrdersScreenWidget extends ElementaryWidget<IProfileMyOrdersScreenWidgetModel> {
  const ProfileMyOrdersScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileMyOrdersScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileMyOrdersScreenWidgetModel wm) {
    return Container();
  }
}
