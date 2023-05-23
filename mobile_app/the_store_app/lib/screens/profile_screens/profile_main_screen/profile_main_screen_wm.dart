import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'profile_main_screen_model.dart';
import 'profile_main_screen_widget.dart';

abstract class IProfileMainScreenWidgetModel extends IWidgetModel implements IThemeProvider{
  myDataPressed() {}

  pointsListPressed() {}

  myOrdersPressed() {}

  unAuthorize() {}
}

ProfileMainScreenWidgetModel defaultProfileMainScreenWidgetModelFactory(BuildContext context) {
  return ProfileMainScreenWidgetModel(
      ProfileMainScreenModel(
          context.read()
      )
  );
}

// TODO: cover with documentation
/// Default widget model for ProfileMainScreenWidget
class ProfileMainScreenWidgetModel
    extends WidgetModel<ProfileMainScreenWidget, ProfileMainScreenModel>
    with ThemeProvider
    implements IProfileMainScreenWidgetModel {

  ProfileMainScreenWidgetModel(ProfileMainScreenModel model) : super(model);

  @override
  myDataPressed() {
    context.router.navigate(ProfileDataUpdateRoute());

  }

  @override
  myOrdersPressed() {
    context.router.navigate(ProfileMyOrdersRoute());
  }

  @override
  pointsListPressed() {
    context.router.navigate(PointsListRoute());
  }

  @override
  unAuthorize() {
    // TODO: implement unAuthorize

  }
}
