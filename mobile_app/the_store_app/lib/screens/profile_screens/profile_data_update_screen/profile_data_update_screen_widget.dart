import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'package:the_store_app/screens/components/custom_filled_button_widget.dart';
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
    return WillPopScope(
      onWillPop: () async{
        wm.popDialog();
        return wm.shouldPop;
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: Text("Мои данные", style: wm.textTheme.titleMedium),
            leading: AutoLeadingButton(
              color: wm.colorScheme.onBackground,
            ),
            centerTitle: true,
          ),
          body: EntityStateNotifierBuilder(
            listenableEntityState: wm.userState,
            loadingBuilder: (context, user) {

              return const Center(child: PreloaderCircleIndicator());
            },
            builder: (context, userState) {
              wm.updateControllersText();
              return _DataUpdateViewWithValidatedForm(wm: wm);
            },
          )),
    );
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
          hintValue: "Населённый пункт",
        ),
        CustomTextField(
          validatingController: widget.wm.nameController,
          hintValue: "Иванов Иван",
        ),
        CustomTextField(
          phoneNumber: true,
          validatingController: widget.wm.phoneController,
          hintValue: "7 (900) 000 00 00",
        ),
        CustomTextField(
          validatingController: widget.wm.mailController,
          hintValue: "email@mail.com",
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: StreamBuilder<String?>(
              stream: widget.wm.genderController.stream,
              builder: (context, genderSnapshot) {
                String? value = widget.wm.genderController.valueOrNull;
                return Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: _GenderCheckbox.male(
                          value: value == 'male',
                          onChanged: () {
                            widget.wm.genderController.add('male');
                          }),
                    ),
                    Expanded(
                      flex: 1,
                      child: _GenderCheckbox.female(
                          value: value == 'female',
                          onChanged: () {
                            widget.wm.genderController.add('female');
                          }),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    )
                  ],
                );
              },
            )),

        // _GenderChooseCheckBox(
        //     wm: widget.wm,
        // ),
        const SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: OutlinedButton(
              style: Theme.of(context).outlinedButtonTheme.style,
              onPressed: () => _showDeleteDialog(),
              child: Text(
                "УДАЛИТЬ АККАУНТ",
                style: widget.wm.textTheme.labelMedium,
              ),
            ),
          ),
        ),
        Expanded(child: Container()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),

          ///make text tappable
          child: Text(
            "Нажимая кнопку, Вы соглашаетесь c Правилами и политикой конфиденциальности Компании.",
            style: widget.wm.textTheme.bodySmall,
          ),
        ),

        const SizedBox(
          height: 32,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomFilledButton(
              onTap: () => widget.wm.onSubmit(), text: "СОХРАНИТЬ"),
        ),
        const SizedBox(
          height: 16,
        )
      ]),
    );
  }

  Future<void> _showDeleteDialog() async {
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
            "Вы уверены, что хотите удалить аккант? Это изменение необратимо",
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
                      onPressed: () => widget.wm.onDelete(),
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
                      onPressed: () => context.router.pop(),
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

class _GenderCheckbox extends StatelessWidget {
  const _GenderCheckbox({
    required this.value,
    required this.onChanged,
    required this.gender,
    Key? key,
  }) : super(key: key);

  const _GenderCheckbox.male({
    required this.value,
    required this.onChanged,
    Key? key,
  })  : gender = 'male',
        super(key: key);

  const _GenderCheckbox.female({
    required this.value,
    required this.onChanged,
    Key? key,
  })  : gender = 'female',
        super(key: key);

  final bool value;
  final void Function() onChanged;
  final String gender;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onChanged,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                border: Border.all(
                  color: value ? theme.hintColor : theme.focusColor,
                  width: 1,
                ),
                borderRadius: BorderRadius.zero,
              ),
              child: Center(
                child: Visibility(
                  visible: value,
                  child: const Icon(
                    Icons.done,
                    color: AppColor.black,
                    size: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 13,
            ),
            Text(
              gender == 'male' ? 'Муж' : 'Жен',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        ),
      ),
    );
  }
}
