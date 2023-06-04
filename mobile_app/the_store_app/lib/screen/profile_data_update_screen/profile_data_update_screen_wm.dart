import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/user/store_user.dart';
import 'package:the_store_app/internal/logger.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'package:the_store_app/service/service.dart';

import 'profile_data_update_screen_model.dart';
import 'profile_data_update_screen_widget.dart';

abstract class IProfileDataUpdateScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextValidatingController get cityController;

  TextValidatingController get nameController;

  TextValidatingController get phoneController;

  TextValidatingController get mailController;

  ValueStreamWrapper<String?> get genderController;

  EntityStateNotifier<StoreUser> get userState;

  bool get shouldPop;

  Future<void> changeState() async {}

  void onDelete();

  void onSubmit();

  void updateControllersText() {}

  Future<void> popDialog() async {}
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
    _getUser();
  }

  StoreUser? user;

  Future<void> _getUser() async {
    userState.loading(userState.value?.data);
    try {
      final user = await model.getUser();
      this.user = user;
      userState.content(user);
    } catch (e) {
      context.showSnackBar("Не удалось получить информацию о пользователе");
    }
  }

  @override
  Future<void> changeState() async {
    _getUser();
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
    StoreUser userUpdated = StoreUser(
      username: nameController.textEditingController.text,
      userPhone: phoneController.textEditingController.text,
      userEmail: mailController.textEditingController.text,
      gender: genderController.value,
      //city:
    );
    logger.log(Logger.level, "user updated: $userUpdated");
    //updateUser call
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    mailController.dispose();
    cityController.dispose();
    genderController.dispose();
    super.dispose();
  }

  @override
  ValueStreamWrapper<String?> genderController = ValueStreamWrapper();

  @override
  final userState = EntityStateNotifier();

  @override
  void updateControllersText() {
    genderController.add(user?.gender ?? 'male');
    mailController.textEditingController.text = user?.userEmail ?? '';
    nameController.textEditingController.text = user?.username ?? '';
    phoneController.textEditingController.text = user?.userPhone ?? '';
    //city?
  }

  void _popRouter() {
    context.router.pop();
  }

  @override
  bool shouldPop = false;

  @override
  Future<void> popDialog() async {
    final theme = Theme.of(context);
    final fonts = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          content: Text(
            "При выходе не сохранённые изменения будут потеряны. Продолжить?",
            style: fonts.titleMedium,
            textAlign: TextAlign.center,
          ),
          actionsPadding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilledButton(
                      onPressed: () {
                        shouldPop = true;
                        logger.log(Logger.level, "yes $shouldPop");
                        context.router.pop();
                        context.router.navigate(ProfileMainRoute());
                      },
                      style: theme.filledButtonTheme.style,
                      child: Center(
                        child: Text(
                          "ДА",
                          style: fonts.labelMedium?.copyWith(
                              color: colors.onPrimary,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FilledButton(
                      onPressed: () {
                        shouldPop = true;
                        logger.log(Logger.level, "no $shouldPop");
                        context.router.pop();
                      },
                      style: theme.filledButtonTheme.style,
                      child: Center(
                        child: Text(
                          "НЕТ",
                          style: fonts.labelMedium?.copyWith(
                              color: colors.onPrimary,
                              fontWeight: FontWeight.w700,
                              fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
