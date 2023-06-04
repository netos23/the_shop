import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth_code_screen_model.dart';
import 'auth_code_screen_widget.dart';

abstract class IAuthCodeScreenWidgetModel extends IWidgetModel {
}

AuthCodeScreenWidgetModel defaultAuthCodeScreenWidgetModelFactory(BuildContext context) {
  return AuthCodeScreenWidgetModel(AuthCodeScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for AuthCodeScreenWidget
class AuthCodeScreenWidgetModel extends WidgetModel<AuthCodeScreenWidget, AuthCodeScreenModel>
    implements IAuthCodeScreenWidgetModel {

  AuthCodeScreenWidgetModel(AuthCodeScreenModel model) : super(model);
}
