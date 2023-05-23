import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_data_update_screen_model.dart';
import 'profile_data_update_screen_widget.dart';

abstract class IProfileDataUpdateScreenWidgetModel extends IWidgetModel
    implements IThemeProvider{
  TextEditingController get dataUpdateController;
}

ProfileDataUpdateScreenWidgetModel defaultProfileDataUpdateScreenWidgetModelFactory(BuildContext context) {
  return ProfileDataUpdateScreenWidgetModel(
    ProfileDataUpdateScreenModel(
      context.read(),
    )
  );
}

// TODO: cover with documentation
/// Default widget model for ProfileDataUpdateScreenWidget
class ProfileDataUpdateScreenWidgetModel
    extends WidgetModel<ProfileDataUpdateScreenWidget, ProfileDataUpdateScreenModel>
    with ThemeProvider
    implements IProfileDataUpdateScreenWidgetModel {

  ProfileDataUpdateScreenWidgetModel(ProfileDataUpdateScreenModel model) : super(model);

  @override
  final dataUpdateController = TextEditingController();
}
