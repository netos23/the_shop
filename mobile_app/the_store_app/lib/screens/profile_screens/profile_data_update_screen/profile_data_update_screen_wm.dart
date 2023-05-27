import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/service/service.dart';
import 'profile_data_update_screen_model.dart';
import 'profile_data_update_screen_widget.dart';

abstract class IProfileDataUpdateScreenWidgetModel extends IWidgetModel
    implements IThemeProvider{

  TextValidatingController get cityController;
  TextValidatingController get nameController;
  TextValidatingController get phoneController;
  TextValidatingController get mailController;
  bool? get gender;

  void onDelete();
  void onSubmit();
}

ProfileDataUpdateScreenWidgetModel defaultProfileDataUpdateScreenWidgetModelFactory(BuildContext context) {
  return ProfileDataUpdateScreenWidgetModel(
    ProfileDataUpdateScreenModel(
      context.read(),
    )
  );
}

// TODO: cover with documentation
/// Default widget model for ProfileDataUpdateScreenWidget
class ProfileDataUpdateScreenWidgetModel
    extends WidgetModel<ProfileDataUpdateScreenWidget, ProfileDataUpdateScreenModel>
    with ThemeProvider
    implements IProfileDataUpdateScreenWidgetModel {

  ProfileDataUpdateScreenWidgetModel(ProfileDataUpdateScreenModel model) : super(model);

  bool? _gender = null;

  @override

  TextValidatingController get cityController => TextValidatingController(func: _validateBasicText);

  @override

  TextValidatingController get mailController => TextValidatingController(func: _validateMail);

  @override

  TextValidatingController get nameController => TextValidatingController(func: _validateBasicText);

  @override

  TextValidatingController get phoneController => TextValidatingController(func: _validatePhone);

  String? _validateBasicText(String? text){
    if(text == null || text.isEmpty){
      return "Поле обязательно";
    }
    if(text.contains(RegExp(r'[0-9]'))){
      return "В данном поле не может быть цифр";
    }
    return null;
  }





  String? _validateMail(String? text){
    if(text == null || text.isEmpty){
      return "Поле обязательно";
    }
    if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(text)){
      return "Неправильный формат почты";
    }
    return null;
  }

  String? _validatePhone(String? text){
    if(text == null || text.isEmpty){
      return "Поле обязательно";
    }
    if(!RegExp(r'(^(?:[+]7)?[0-9]{10,12}$)').hasMatch(text)){
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
  bool? get gender => _gender;
}
