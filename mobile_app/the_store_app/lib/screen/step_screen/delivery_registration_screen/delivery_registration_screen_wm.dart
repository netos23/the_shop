import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/entity/user/store_user.dart';
import 'package:the_store_app/service/service.dart';
import 'delivery_registration_screen_model.dart';
import 'delivery_registration_screen_widget.dart';

abstract class IDeliveryRegistrationScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  TextValidatingController get nameController;

  TextValidatingController get phoneController;

  TextValidatingController get mailController;

  EntityStateNotifier<StoreUser> get userState;

  ValueStreamWrapper<String> get payment;

  bool get shouldPop;

  void onSubmit();

  void updateControllersText() {}
}

DeliveryRegistrationScreenWidgetModel
    defaultDeliveryRegistrationScreenWidgetModelFactory(BuildContext context) {
  return DeliveryRegistrationScreenWidgetModel(DeliveryRegistrationScreenModel(
    errorHandler: context.read(),
    client: context.read(),
  ));
}

// TODO: cover with documentation
/// Default widget model for DeliveryRegistrationScreenWidget
class DeliveryRegistrationScreenWidgetModel extends WidgetModel<
        DeliveryRegistrationScreenWidget, DeliveryRegistrationScreenModel>
    with ThemeProvider
    implements IDeliveryRegistrationScreenWidgetModel {
  DeliveryRegistrationScreenWidgetModel(DeliveryRegistrationScreenModel model)
      : super(model);

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
    payment.add("cash");
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
  void onSubmit() {
    StoreUser userUpdated = StoreUser(
      username: nameController.textEditingController.text,
      userPhone: phoneController.textEditingController.text,
      userEmail: mailController.textEditingController.text,

      //city:
    );
    //updateUser call
  }

  @override
  void dispose() {
    nameController.dispose();
    phoneController.dispose();
    mailController.dispose();
    super.dispose();
  }

  @override
  final userState = EntityStateNotifier();

  @override
  void updateControllersText() {
    mailController.textEditingController.text = user?.userEmail ?? '';
    nameController.textEditingController.text = user?.username ?? '';
    phoneController.textEditingController.text = user?.userPhone ?? '';
    //city?
  }

  @override
  bool shouldPop = false;

  @override
  // TODO: implement payment
  ValueStreamWrapper<String> payment = ValueStreamWrapper<String>();
}
