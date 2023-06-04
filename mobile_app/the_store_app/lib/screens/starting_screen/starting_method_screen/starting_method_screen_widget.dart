import 'package:auto_route/annotations.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'starting_method_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for StartingMethodScreen module
@RoutePage()
class StartingMethodScreenWidget
    extends ElementaryWidget<IStartingMethodScreenWidgetModel> {
  const StartingMethodScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory =
        defaultStartingMethodScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IStartingMethodScreenWidgetModel wm) {
    final extracolors = wm.extraAppColors;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Способ получения",
          style: wm.textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 50, 20, 0),
            child: CardWithText(text: "Выберите способ получения заказа",
            assetPath: "assets/images/productBasket.png",
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: ButtonsForMethod(
              lightColor: wm.colorScheme.onPrimary,
              darkColor: wm.colorScheme.primary,
              borderColor: extracolors!.onSurface,
              onDelivery: () => wm.onDelivery(),
              onPickup: () => wm.onPickup(),
            ),
          ),
        ],
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
    final extraColors = Theme.of(context).extension<ExtraAppColors>()!;
    final fonts = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: OutlinedButton(

                onPressed: onDelivery,
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    )
                ),
                child: Center(
                  child: Text(
                    "ДОСТАВКА",
                    style: fonts.labelMedium,
                  ),
                )),
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: FilledButton(
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      const RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                      )
                  )
              ),
              onPressed: onPickup,
              child: Center(
                child: Text(
                  "САМОВЫВОЗ",
                  style: fonts.labelMedium?.copyWith(color: colors.onPrimary),
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
