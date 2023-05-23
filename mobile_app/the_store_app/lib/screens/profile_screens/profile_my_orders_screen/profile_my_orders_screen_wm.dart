import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'profile_my_orders_screen_model.dart';
import 'profile_my_orders_screen_widget.dart';

abstract class IProfileMyOrdersScreenWidgetModel extends IWidgetModel {
}

ProfileMyOrdersScreenWidgetModel defaultProfileMyOrdersScreenWidgetModelFactory(BuildContext context) {
  return ProfileMyOrdersScreenWidgetModel(
      ProfileMyOrdersScreenModel(
      context.read()
      )
  );
}

// TODO: cover with documentation
/// Default widget model for ProfileMyOrdersScreenWidget
class ProfileMyOrdersScreenWidgetModel extends WidgetModel<ProfileMyOrdersScreenWidget, ProfileMyOrdersScreenModel>
    implements IProfileMyOrdersScreenWidgetModel {

  ProfileMyOrdersScreenWidgetModel(ProfileMyOrdersScreenModel model) : super(model);
}
