import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'profile_main_screen_model.dart';
import 'profile_main_screen_widget.dart';

abstract class IProfileMainScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  myDataPressed() {}

  pointsListPressed() {}

  myOrdersPressed() {}

  unAuthorize() {}

  Future<void> showUnAuthDialog() async {}
}

ProfileMainScreenWidgetModel defaultProfileMainScreenWidgetModelFactory(
    BuildContext context) {
  return ProfileMainScreenWidgetModel(ProfileMainScreenModel(context.read()));
}

// TODO: cover with documentation
/// Default widget model for ProfileMainScreenWidget
class ProfileMainScreenWidgetModel
    extends WidgetModel<ProfileMainScreenWidget, ProfileMainScreenModel>
    with ThemeProvider
    implements IProfileMainScreenWidgetModel {
  ProfileMainScreenWidgetModel(ProfileMainScreenModel model) : super(model);

  @override
  myDataPressed() {
    context.router.navigate(ProfileDataUpdateRoute());
  }

  @override
  myOrdersPressed() {
    context.router.navigate(ProfileMyOrdersRoute());
  }

  @override
  pointsListPressed() {
    context.router.navigate(MapPointsRoute());
  }

  @override
  unAuthorize() {
    // TODO: implement unAuthorize
  }

  @override
  Future<void> showUnAuthDialog() async {
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
            "Выйти из аккаунта? Ваши данные будут сохранены",
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
                        context.router.pop();
                        unAuthorize();
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
