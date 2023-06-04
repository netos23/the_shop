import 'package:dio/dio.dart';
import 'package:elementary/elementary.dart';
import 'package:the_store_app/domain/models/profile.dart';
import 'package:the_store_app/domain/use_case/profile_use_case.dart';
import 'package:the_store_app/internal/app_components.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:the_store_app/util/snack_bar_util.dart';
import 'package:the_store_app/util/value_stream_wrapper.dart';
import 'package:the_store_app/util/wm_extensions.dart';
import 'package:flutter/material.dart';
import 'edit_profile_page_model.dart';
import 'edit_profile_page_widget.dart';

abstract class IEditProfilePageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  ValueStreamWrapper<bool> get isFarmer;

  ValueStreamWrapper<String?> get genderController;

  ProfileUseCase get profileUseCase;

  TextEditingController get firstNameController;

  TextEditingController get secondNameController;

  TextEditingController get emailController;

  TextEditingController get bitrhdayController;

  TextEditingController get phoneNumber;

  onEditProfile();
}

EditProfilePageWidgetModel defaultEditProfilePageWidgetModelFactory(
    BuildContext context) {
  return EditProfilePageWidgetModel(EditProfilePageModel());
}

// TODO: cover with documentation
/// Default widget model for EditProfilePageWidget
class EditProfilePageWidgetModel
    extends WidgetModel<EditProfilePageWidget, EditProfilePageModel>
    with ThemeProvider
    implements IEditProfilePageWidgetModel {
  EditProfilePageWidgetModel(EditProfilePageModel model) : super(model);

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
  ValueStreamWrapper<String?> genderController = ValueStreamWrapper();

  @override
  ValueStreamWrapper<bool> isFarmer = ValueStreamWrapper();

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    emailController.text = widget.profile?.email ?? '';
    firstNameController.text = widget.profile?.firstName ?? '';
    secondNameController.text = widget.profile?.secondName ?? '';
    phoneNumber.text = widget.profile?.phone ?? '';
    bitrhdayController.text = widget.profile?.birthDate ?? '';
    genderController.add(widget.profile?.gender);
    isFarmer.add(widget.profile?.role == 'farmer');
  }

  @override
  Future<void> onEditProfile() async {
    final request = Profile(
        email: emailController.text,
        firstName: firstNameController.text,
        secondName: secondNameController.text,
        phone: phoneNumber.text,
        birthDate: bitrhdayController.text,
        gender: genderController.value,
        role: isFarmer.value ? 'farmer' : 'client');

    try {
      await profileUseCase.patchProfile(request);
      router.pop();
      // router.push(
      //   AuthCodeRoute(email: request.email),
      // );
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
  ProfileUseCase profileUseCase = AppComponents().profileUseCase;
}
