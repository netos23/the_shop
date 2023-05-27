import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'package:the_store_app/service/service.dart';
import 'profile_data_update_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for ProfileDataUpdateScreen module
@RoutePage()
class ProfileDataUpdateScreenWidget
    extends ElementaryWidget<IProfileDataUpdateScreenWidgetModel> {
  const ProfileDataUpdateScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultProfileDataUpdateScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IProfileDataUpdateScreenWidgetModel wm) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Мои данные", style: wm.textTheme.titleMedium),
          centerTitle: true,
        ),
        body: _DataUpdateViewWithValidatedForm(
          wm: wm,
        ));
  }
}

class _DataUpdateViewWithValidatedForm extends StatefulWidget {
  const _DataUpdateViewWithValidatedForm({
    Key? key,
    required this.wm,
  }) : super(key: key);

  final IProfileDataUpdateScreenWidgetModel wm;

  @override
  State<StatefulWidget> createState() {
    return _DataUpdateViewWithValidatedFormState();
  }
}

class _DataUpdateViewWithValidatedFormState
    extends State<_DataUpdateViewWithValidatedForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(children: [
        CustomTextField(
          validatingController: widget.wm.cityController,
          initValue: "Населённый пункт",
        ),
        CustomTextField(
          validatingController: widget.wm.nameController,
          initValue: "Иванов Иван",
        ),
        CustomTextField(
          phoneNumber: true,
          validatingController: widget.wm.phoneController,
          initValue: "7 (900) 000 00 00",
        ),
        CustomTextField(
          validatingController: widget.wm.mailController,
          initValue: "email@mail.com",
        ),
        // _GenderChooseCheckBox(
        //     wm: widget.wm,
        // ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  )),
                  side: MaterialStateProperty.all<BorderSide>(BorderSide(
                    width: 1,
                    color:
                        Theme.of(context).extension<ExtraAppColors>()!.border,
                  ))),
              onPressed: () => widget.wm.onDelete(),
              child: Text(
                "УДАЛИТЬ АККАУНТ",
                style: widget.wm.textTheme.labelMedium,
              ),
            ),
          ),
        ),
        Text(
          "Нажимая кнопку, Вы соглашаетесь c Правилами и политикой конфиденциальности Компании.",
          style: widget.wm.textTheme.bodySmall,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomFilledButton(
              onTap: () => widget.wm.onSubmit(), text: "СОХРАНИТЬ"),
        ),
      ]),
    );
  }
}

// class _GenderChooseCheckBox extends StatelessWidget{
//   const _GenderChooseCheckBox({Key? key,
//     required this.wm,
//   }) : super(key: key);
//
//   final IProfileDataUpdateScreenWidgetModel wm;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     FormField<bool>(
//       builder: (FormFieldState<bool> state) {
//         return CheckboxListTile(
//           dense: state.hasError,
//           title: Text("Муж", style: wm.textTheme.bodyLarge),
//           value: wm.gender,
//           onChanged: () => gender = !gender,
//           subtitle: state.hasError
//               ? Builder(
//             builder: (BuildContext context) => Text(
//               state.errorText ?? "",
//               style: TextStyle(
//                   color: Theme.of(context).colorScheme.error),
//             ),
//           )
//               : null,
//           controlAffinity: ListTileControlAffinity.leading,
//         );
//       },
//     );
//   }
// }
//
//
