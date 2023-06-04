import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/data/repository/auth_repository.dart';
import 'package:the_store_app/domain/models/profile.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:the_store_app/util/value_stream_wrapper.dart';
import 'package:the_store_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'farm_product_registration_page_model.dart';
import 'farm_product_registration_page_widget.dart';

abstract class IFarmProductRegistrationPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  ValueStreamWrapper<bool> get isFarmer;

  ValueStreamWrapper<String> get genderController;

  AuthRepository get authRepository;

  TextEditingController get firstNameController;

  TextEditingController get secondNameController;

  TextEditingController get emailController;

  TextEditingController get bitrhdayController;

  TextEditingController get phoneNumber;

  onFarmProductRegistration();
}

FarmProductRegistrationPageWidgetModel
    defaultFarmProductRegistrationPageWidgetModelFactory(BuildContext context) {
  return FarmProductRegistrationPageWidgetModel(
      FarmProductRegistrationPageModel());
}

// TODO: cover with documentation
/// Default widget model for FarmProductRegistrationPageWidget
class FarmProductRegistrationPageWidgetModel extends WidgetModel<
        FarmProductRegistrationPageWidget, FarmProductRegistrationPageModel>
    with ThemeProvider
    implements IFarmProductRegistrationPageWidgetModel {
  FarmProductRegistrationPageWidgetModel(FarmProductRegistrationPageModel model)
      : super(model);

  @override
  AuthRepository authRepository = AuthRepository(AppComponents().authService);

  @override
  final bitrhdayController = TextEditingController();

  @override
  final emailController = TextEditingController();

  @override
  final firstNameController = TextEditingController();

  @override
  final phoneNumber = TextEditingController();

  @override
  final secondNameController = TextEditingController();

  @override
  void initWidgetModel() {
    emailController.text = widget.email ?? '';
    super.initWidgetModel();
  }

  @override
  Future<void> onFarmProductRegistration() async {
    final request = Profile(
        email: emailController.text,
        firstName: firstNameController.text,
        secondName: secondNameController.text,
        phone: phoneNumber.text,
        birthDate: bitrhdayController.text,
        gender: genderController.value,
        role: isFarmer.value ? 'farmer' : 'client');

    try {
      await authRepository.register(profile: request);
      router.push(
        AuthCodeRoute(email: request.email),
      );
    } on DioError catch (error) {
      if (error.response?.statusCode == 403) {
        context.showSnackBar(localizations.userIsAlreadyExists);
        return;
      }
      throw Exception(
        error.response?.data['message'],
      );
    }
  }

  @override
  void dispose() {
    genderController.dispose();
    isFarmer.dispose();
    super.dispose();
  }

  @override
  ValueStreamWrapper<String> genderController = ValueStreamWrapper();

  @override
  ValueStreamWrapper<bool> isFarmer = ValueStreamWrapper();
}
