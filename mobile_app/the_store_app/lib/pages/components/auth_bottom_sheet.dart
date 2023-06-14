import 'package:auto_route/auto_route.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:the_store_app/router/app_router.dart';
import 'package:flutter/material.dart';

class AuthBottomSheet extends StatelessWidget {
  const AuthBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 5.0,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 4,
            child: Image.asset('assets/images/basket.png'),
          ),
          Expanded(
            child: Text(
              'Что бы заказать товар, Вам необходимо авторизоваться',
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onSurface,
              ),
            ),
          ),
          Expanded(
            child: FilledButton(
              onPressed: () {
                context.router.root.pop();
                context.router.navigate(AuthRoute());
              },
              child: Center(
                child: Text(
                  localizations.login,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
