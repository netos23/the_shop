import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'profile_screen_model.dart';
import 'profile_screen_widget.dart';

abstract class IProfileScreenWidgetModel extends IWidgetModel {
}

ProfileScreenWidgetModel defaultProfileScreenWidgetModelFactory(BuildContext context) {
  return ProfileScreenWidgetModel(ProfileScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for ProfileScreenWidget
class ProfileScreenWidgetModel extends WidgetModel<ProfileScreenWidget, ProfileScreenModel>
    implements IProfileScreenWidgetModel {

  ProfileScreenWidgetModel(ProfileScreenModel model) : super(model);
}
