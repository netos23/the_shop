import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/entity/delivery/delivery_method.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'starting_method_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for StartingMethodScreen module
@RoutePage<DeliveryMethod>()
class StartingMethodScreenWidget
    extends ElementaryWidget<IStartingMethodScreenWidgetModel> {
  const StartingMethodScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultStartingMethodScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IStartingMethodScreenWidgetModel wm) {
    final extraColors = wm.extraAppColors;
    return Scaffold(
      backgroundColor: wm.colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Способ получения',
          style: wm.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        leading: wm.router.canPop()
            ? BackButton(
                color: wm.colorScheme.primary,
              )
            : null,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 4,
              child: Image.asset(
                'assets/images/quadrocopter.png',
              ),
            ),
            Flexible(
              child: Text(
                'Выберите способ получения заказа',
                style: wm.textTheme.bodyLarge,
              ),
            ),
            Flexible(
              child: Container(
                height: 50,
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: ButtonsForMethod(
                  lightColor: wm.colorScheme.onPrimary,
                  darkColor: wm.colorScheme.primary,
                  borderColor: extraColors!.onSurface,
                  onDelivery: wm.onDelivery,
                  onPickup: wm.onPickup,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonsForMethod extends StatelessWidget {
  final Color borderColor;
  final Color lightColor;
  final Color darkColor;
  final VoidCallback? onDelivery;
  final VoidCallback onPickup;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final extraColors = theme.extension<ExtraAppTypography>()!.bodySmall;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: OutlinedButton(
            onPressed: onDelivery,
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            child: Center(
              child: Text(
                'ДОСТАВКА',
                style: extraColors,
              ),
            ),
          ),
        ),
        const SizedBox(width: 10),
        Flexible(
          child: FilledButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
              ),
            ),
            onPressed: onPickup,
            child: Center(
              child: Text(
                'САМОВЫВОЗ',
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.colorScheme.onPrimary,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  const ButtonsForMethod({
    Key? key,
    required this.borderColor,
    required this.lightColor,
    required this.darkColor,
    required this.onDelivery,
    required this.onPickup,
  }) : super(key: key);
}
