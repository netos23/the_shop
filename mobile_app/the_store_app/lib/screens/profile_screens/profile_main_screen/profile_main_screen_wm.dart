import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_main_screen_model.dart';
import 'profile_main_screen_widget.dart';

abstract class IProfileMainScreenWidgetModel extends IWidgetModel {
}

ProfileMainScreenWidgetModel defaultProfileMainScreenWidgetModelFactory(BuildContext context) {
  return ProfileMainScreenWidgetModel(context.read());
}

// TODO: cover with documentation
/// Default widget model for ProfileMainScreenWidget
class ProfileMainScreenWidgetModel extends WidgetModel<ProfileMainScreenWidget, ProfileMainScreenModel>
    implements IProfileMainScreenWidgetModel {

  ProfileMainScreenWidgetModel(ProfileMainScreenModel model) : super(model);
}
