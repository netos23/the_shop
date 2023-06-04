import 'package:admin_app/router/app_router.dart';
import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:admin_app/domain/models/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'edit_profile_page_wm.dart';

// TODO: cover with documentation
/// Main widget for EditProfilePage module
@RoutePage()
class EditBannerPageWidget
    extends ElementaryWidget<IEditBannerPageWidgetModel> {
  const EditBannerPageWidget({
    this.profile,
    Key? key,
    WidgetModelFactory wmFactory = defaultEditBannerPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final Profile? profile;

  @override
  Widget build(IEditBannerPageWidgetModel wm) {
    final localizations = wm.localizations;
    final theme = wm.theme;
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.black,
        ),
        centerTitle: true,
        title: Text(
          'Создание баннера',
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
                    'Заголовок',
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
                    'Описание',
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
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Ссылка',
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
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Изображение',
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
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    'Тип',
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
            SizedBox(
              height: 50,
              child: FilledButton(
                style: theme.filledButtonTheme.style?.copyWith(
                    fixedSize:
                        const MaterialStatePropertyAll(Size.fromHeight(50))),
                onPressed: wm.onEditProfile,
                child: Center(
                  child: Text(localizations.save),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
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
