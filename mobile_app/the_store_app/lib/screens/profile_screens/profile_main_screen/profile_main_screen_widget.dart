import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_main_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileMainScreen module
class ProfileMainScreenWidget extends ElementaryWidget<IProfileMainScreenWidgetModel> {
  const ProfileMainScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileMainScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileMainScreenWidgetModel wm) {
    return Container();
  }
}
