import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_my_orders_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileMyOrdersScreen module
///
@RoutePage()
class ProfileMyOrdersScreenWidget extends ElementaryWidget<IProfileMyOrdersScreenWidgetModel> {
  const ProfileMyOrdersScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileMyOrdersScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileMyOrdersScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мои заказы",
        style: AppTypography.title,),
        centerTitle: true,

      ),

    );
  }
}
