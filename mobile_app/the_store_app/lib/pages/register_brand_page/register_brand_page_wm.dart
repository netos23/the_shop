import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/models/register_brand_request.dart';
import 'package:the_store_app/domain/use_case/profile_use_case.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:the_store_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'register_brand_page_model.dart';
import 'register_brand_page_widget.dart';

abstract class IRegisterBrandPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  ProfileUseCase get profileUseCase;

  TextEditingController get brandController;

  TextEditingController get addressController;

  onRegisterBrand();
}

RegisterBrandPageWidgetModel defaultRegisterBrandPageWidgetModelFactory(
    BuildContext context) {
  return RegisterBrandPageWidgetModel(RegisterBrandPageModel());
}

// TODO: cover with documentation
/// Default widget model for RegisterBrandPageWidget
class RegisterBrandPageWidgetModel
    extends WidgetModel<RegisterBrandPageWidget, RegisterBrandPageModel>
    with ThemeProvider
    implements IRegisterBrandPageWidgetModel {
  RegisterBrandPageWidgetModel(RegisterBrandPageModel model) : super(model);

  @override
  final brandController = TextEditingController();

  @override
  final addressController = TextEditingController();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    brandController.text = widget.profile?.email ?? '';
    addressController.text = widget.profile?.firstName ?? '';
  }

  @override
  Future<void> onRegisterBrand() async {
    final request = RegisterBrandRequest(
        brand: brandController.text, address: addressController.text);
    try {
      await profileUseCase.registerBrand(request);
      router.pop();
      profileUseCase.loadProfile();
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
    addressController.dispose();
    brandController.dispose();
    super.dispose();
  }

  @override
  ProfileUseCase profileUseCase = AppComponents().profileUseCase;
}
