import 'package:elementary/elementary.dart';
import 'package:admin_app/data/repository/auth_repository.dart';
import 'package:admin_app/domain/entity/auth/auth_email_part2_request.dart';
import 'package:admin_app/internal/app_components.dart';
import 'package:admin_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'auth_code_page_model.dart';
import 'auth_code_page_widget.dart';

abstract class IAuthCodePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextEditingController get codeController;

  Future<void> confirmCode();
}

AuthCodePageWidgetModel defaultAuthCodePageWidgetModelFactory(
    BuildContext context) {
  return AuthCodePageWidgetModel(AuthCodePageModel());
}

class AuthCodePageWidgetModel
    extends WidgetModel<AuthCodePageWidget, AuthCodePageModel>
    with ThemeProvider
    implements IAuthCodePageWidgetModel {
  @override
  TextEditingController codeController = TextEditingController();

  final authRepository = AuthRepository(
    AppComponents().authService,
  );

  @override
  Future<void> confirmCode() async {
    await authRepository.emailPart2(
      request: AuthEmailPart2Request(
        email: widget.email,
        code: codeController.text,
      ),
    );
  }

  AuthCodePageWidgetModel(AuthCodePageModel model) : super(model);
}
