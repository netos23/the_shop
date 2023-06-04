import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_phone_screen_model.dart';
import 'auth_phone_screen_widget.dart';

abstract class IAuthPhoneScreenWidgetModel extends IWidgetModel {
}

AuthPhoneScreenWidgetModel defaultAuthPhoneScreenWidgetModelFactory(BuildContext context) {
  return AuthPhoneScreenWidgetModel(AuthPhoneScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for AuthPhoneScreenWidget
class AuthPhoneScreenWidgetModel extends WidgetModel<AuthPhoneScreenWidget, AuthPhoneScreenModel>
    implements IAuthPhoneScreenWidgetModel {

  AuthPhoneScreenWidgetModel(AuthPhoneScreenModel model) : super(model);
}
