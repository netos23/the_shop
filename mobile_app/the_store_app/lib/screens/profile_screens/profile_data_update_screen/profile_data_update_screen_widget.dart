import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'profile_data_update_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileDataUpdateScreen module
@RoutePage()
class ProfileDataUpdateScreenWidget extends ElementaryWidget<IProfileDataUpdateScreenWidgetModel> {
  const ProfileDataUpdateScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileDataUpdateScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileDataUpdateScreenWidgetModel wm) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Мои данные",
        style: AppTypography.title,),
        centerTitle: true,
      ),
    );
  }
}
