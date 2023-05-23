import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/internal/service/service.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'profile_data_update_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileDataUpdateScreen module
@RoutePage()
class ProfileDataUpdateScreenWidget extends ElementaryWidget<IProfileDataUpdateScreenWidgetModel> {
  const ProfileDataUpdateScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultProfileDataUpdateScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileDataUpdateScreenWidgetModel wm) {

    

    return Scaffold(
      appBar: AppBar(
        title: Text("Мои данные",
        style: wm.textTheme.titleMedium),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CustomTextField(
            validatingController: TextValidatingController(func: (text){
              if(text == null || text.isEmpty){
                return "Поле обязательно";
              }
              if(text.contains(RegExp(r'[0-9]'))){
                return "В данном поле не может быть цифр";
              }
              return null;
            }),
            hintText: "Населённый пункт",
          ),
          CustomTextField(
            validatingController: TextValidatingController(func: (text){
              if(text == null || text.isEmpty){
                return "Поле обязательно";
              }
              if(text.contains(RegExp(r'[0-9]'))){
                return "В данном поле не может быть цифр";
              }
              return null;
            }),
            hintText: "Населённый пункт",
          ),
          CustomTextField(
            validatingController: TextValidatingController(func: (text){
              if(text == null || text.isEmpty){
                return "Поле обязательно";
              }
              if(text.contains(RegExp(r'[0-9]'))){
                return "В данном поле не может быть цифр";
              }
              return null;
            }),
            hintText: "Населённый пункт",
          ),
        ],
      )
    );
  }
}
