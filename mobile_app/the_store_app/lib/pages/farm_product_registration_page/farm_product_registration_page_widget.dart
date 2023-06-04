import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'farm_product_registration_page_wm.dart';

// TODO: cover with documentation
/// Main widget for FarmProductRegistrationPage module
@RoutePage()
class FarmProductRegistrationPageWidget
    extends ElementaryWidget<IFarmProductRegistrationPageWidgetModel> {
  const FarmProductRegistrationPageWidget({
    this.email,
    Key? key,
    WidgetModelFactory wmFactory =
        defaultFarmProductRegistrationPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final String? email;

  @override
  Widget build(IFarmProductRegistrationPageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          localizations.registration,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    localizations.nameAndSurname,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: wm.firstNameController,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    localizations.nameAndSurname,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: wm.secondNameController,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    localizations.email,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: wm.emailController,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    localizations.birthday,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: wm.bitrhdayController,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Text(
                    localizations.phone,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: theme.colorScheme.onBackground,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  controller: wm.phoneNumber,
                  style: theme.textTheme.bodyMedium?.copyWith(
                    color: theme.colorScheme.onBackground,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            StreamBuilder<String?>(
                stream: wm.genderController.stream,
                builder: (context, genderSnapshot) {
                  return Row(
                    children: [
                      _GenderCheckbox.male(
                        value: genderSnapshot.data == 'male',
                        onChanged: () {
                          wm.genderController.add('male');
                        },
                      ),
                      const SizedBox(width: 32),
                      _GenderCheckbox.female(
                        value: genderSnapshot.data == 'female',
                        onChanged: () {
                          wm.genderController.add('female');
                        },
                      ),
                    ],
                  );
                }),
            const SizedBox(
              height: 16,
            ),
            StreamBuilder<bool>(
                stream: wm.isFarmer.stream,
                initialData: false,
                builder: (context, isFarmerSnapshot) {
                  final isFarmValue =
                      isFarmerSnapshot.hasData ? isFarmerSnapshot.data! : false;
                  return _FarmerCheckbox(
                    value: isFarmValue,
                    onChanged: () {
                      wm.isFarmer.add(!isFarmValue);
                    },
                    text: 'Зарегистрироваться как фермер',
                  );
                }),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 50,
              child: FilledButton(
                style: theme.filledButtonTheme.style?.copyWith(
                    fixedSize:
                        const MaterialStatePropertyAll(Size.fromHeight(50))),
                onPressed: wm.onFarmProductRegistration,
                child: Center(child: Text(localizations.getTheCode)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FarmerCheckbox extends StatelessWidget {
  const _FarmerCheckbox({
    required this.value,
    required this.onChanged,
    required this.text,
    Key? key,
  }) : super(key: key);

  final bool value;
  final void Function() onChanged;
  final String text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onChanged,
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
                child: SvgPicture.asset(
                  'assets/svg/size_done.svg',
                  height: 12,
                  width: 12,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 13,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
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
                child: SvgPicture.asset(
                  'assets/svg/size_done.svg',
                  height: 12,
                  width: 12,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 13,
          ),
          Text(
            gender == 'male' ? 'Муж' : 'Жен',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
