import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:the_store_app/domain/models/order.dart';
import 'package:the_store_app/l10n/generated/app_localizations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OrderResultPageWidget extends StatelessWidget {
  const OrderResultPageWidget({
    Key? key,
    required this.order,
  }) : super(key: key);

  final Order order;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final localizations = AppLocalizations.of(context);
        final theme = Theme.of(context);
        BoxConstraints bounds;

        final width = constrains.maxWidth;
        if (width <= 700) {
          bounds = constrains;
        } else {
          bounds = constrains.copyWith(
            minWidth: 0,
            maxWidth: max(width * 0.7, 700),
          );
        }

        final border = OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: theme.colorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        );

        return ColoredBox(
          color: Theme.of(context).colorScheme.background,
          child: Center(
            child: ConstrainedBox(
              constraints: bounds,
              child: Scaffold(
                appBar: AppBar(
                  automaticallyImplyLeading: false,
                  title: Text('Заказ №${order.id}'),
                ),
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Image.asset(
                            'assets/images/basket.png',
                          ),
                        ),
                        const Expanded(
                          child: Text(
                            'Ваш заказ успешно создан и передан фермеру. '
                            'Мы бережно начинаем его собирвать.',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Expanded(
                            child: Center(
                          child: FilledButton(
                            onPressed: () {
                              context.router.popUntilRoot();
                            },
                            child: const Text('Продулжить покупки'),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
