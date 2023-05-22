import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_data_update_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileDataUpdateScreen module
class ProfileDataUpdateScreenWidget extends ElementaryWidget<IProfileDataUpdateScreenWidgetModel> {
  const ProfileDataUpdateScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileDataUpdateScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileDataUpdateScreenWidgetModel wm) {
    return Container();
  }
}
