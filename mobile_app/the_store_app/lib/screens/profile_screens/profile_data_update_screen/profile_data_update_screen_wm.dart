import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/service/service.dart';
import 'package:the_store_app/util/util_export.dart';
import 'profile_data_update_screen_model.dart';
import 'profile_data_update_screen_widget.dart';

abstract class IProfileDataUpdateScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextValidatingController get cityController;

  TextValidatingController get nameController;

  TextValidatingController get phoneController;

  TextValidatingController get mailController;

  ValueStreamWrapper<String?> get genderController;

  void onDelete();

  void onSubmit();
}

ProfileDataUpdateScreenWidgetModel
    defaultProfileDataUpdateScreenWidgetModelFactory(BuildContext context) {
  return ProfileDataUpdateScreenWidgetModel(ProfileDataUpdateScreenModel(
      errorHandler: context.read(),
      client: context.read(),
  ));
}

// TODO: cover with documentation
/// Default widget model for ProfileDataUpdateScreenWidget
class ProfileDataUpdateScreenWidgetModel extends WidgetModel<
        ProfileDataUpdateScreenWidget, ProfileDataUpdateScreenModel>
    with ThemeProvider
    implements IProfileDataUpdateScreenWidgetModel {
  ProfileDataUpdateScreenWidgetModel(ProfileDataUpdateScreenModel model)
      : super(model);

  @override
  TextValidatingController cityController =
      TextValidatingController(func: _validateBasicText);

  @override
  TextValidatingController mailController =
      TextValidatingController(func: _validateMail);

  @override
  TextValidatingController nameController =
      TextValidatingController(func: _validateBasicText);

  @override
  TextValidatingController phoneController =
      TextValidatingController(func: _validatePhone);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    //здесь лучше сделать запрос к информации юзера и как ты показывал через entityStateNotifier?
    //genderController.add(profile.gender?? '');
    genderController.add('male');
    debugPrint(genderController.valueOrNull ?? 'suka');
  }

  static String? _validateBasicText(String? text) {
    if (text == null || text.isEmpty) {
      return "Поле обязательно";
    }
    if (text.contains(RegExp(r'[0-9]'))) {
      return "В данном поле не может быть цифр";
    }
    return null;
  }

  static String? _validateMail(String? text) {
    if (text == null || text.isEmpty) {
      return "Поле обязательно";
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(text)) {
      return "Неправильный формат почты";
    }
    return null;
  }

  static String? _validatePhone(String? text) {
    if (text == null || text.isEmpty) {
      return "Поле обязательно";
    }
    if (!RegExp(r'(^(?:[+]7)?[0-9]{10,12}$)').hasMatch(text)) {
      return "Неправильный формат телефона";
    }
    return null;
  }

  @override
  void onDelete() {
    // TODO: implement onDelete
  }

  @override
  void onSubmit() {
    // TODO: implement onSubmit
  }

  @override
  void dispose() {
    genderController.dispose();
    super.dispose();
  }

  @override
  ValueStreamWrapper<String?> genderController = ValueStreamWrapper();
}
