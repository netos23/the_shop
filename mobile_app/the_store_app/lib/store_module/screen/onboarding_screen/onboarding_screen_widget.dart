import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_store_app/store_module/screen/components/custom_filled_button.dart';
import 'package:the_store_app/store_module/screen/components/custom_filled_button_widget.dart';
import 'onboarding_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OnboardingPage module
@RoutePage()
class OnboardingPageWidget
    extends ElementaryWidget<IOnboardingPageWidgetModel> {
  const OnboardingPageWidget({
    Key? key,
    this.pages = const [
      OnboardingPage(
        text: 'ПОКУПАЙТЕ ПРОДУКТЫ НЕ ВЫХОДЯ ИЗ ДОМА ИЛИ '
            'ПОЛУЧАЙТЕ БОНУСЫ ЗА ПРОГУЛКУ ЗА НИМИ.',
        assetPath: 'assets/images/basket2.png',
      ),
      OnboardingPage(
        text: 'УДОБНАЯ НАВИГАЦИЯ ВНУТРИ МАГАЗИНА НЕ ПОЗВОЛИТ '
            'ВАМ ПОТЕРЯТЬСЯ ИЛИ ЧТО ТО ЗАБЫТЬ.',
        assetPath: 'assets/images/vegitabales.png',
      ),
      OnboardingPage(
        text: 'ДЕЛИТЕСЬ КОРЗИНОЙ С БЛИЗКИМИ И ДРУЗЬЯМИ.',
        assetPath: 'assets/images/quadrocopter.png',
      ),
      OnboardingPage(
        text: 'ПРИЯТНОЙ РАБОТЫ С ПРИЛОЖЕНИЕМ.',
        assetPath: 'assets/images/shop_cart.png',
      ),
    ],
    WidgetModelFactory wmFactory = defaultOnboardingPageWidgetModelFactory,
  }) : super(wmFactory, key: key);

  final List<Widget> pages;

  @override
  Widget build(IOnboardingPageWidgetModel wm) {
    return Scaffold(
      backgroundColor: wm.colorScheme.background,
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: wm.onSelect,
            icon: Icon(
              Icons.close,
              color: wm.colorScheme.primary,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 8,
              child: PageView.builder(
                controller: wm.controller,
                // itemCount: pages.length,
                itemBuilder: (_, index) {
                  return pages[index % pages.length];
                },
              ),
            ),
            Flexible(
              child: AnimatedBuilder(
                  animation: wm.controller,
                  builder: (context, _) {
                    return SizedBox(
                      height: 50,
                      child: CustomFilledButton(
                        onTap: wm.buildNextPageCallback(),
                        text: wm.buildButtonText(),
                      ),
                    );
                  }),
            ),
            Expanded(
              child: SmoothPageIndicator(
                controller: wm.controller,
                count: 4,
                effect: CustomizableEffect(
                  spacing: 15,
                  activeDotDecoration: DotDecoration(
                    color: wm.colorScheme.onPrimary,
                    width: 8,
                    height: 8,
                    borderRadius: BorderRadius.circular(6),
                    dotBorder: DotBorder(
                      width: 2,
                      color: wm.colorScheme.primary,
                    ),
                  ),
                  dotDecoration: DotDecoration(
                    width: 10,
                    height: 10,
                    color: wm.colorScheme.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String text;
  final String assetPath;

  const OnboardingPage({
    super.key,
    required this.text,
    required this.assetPath,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Image.asset(
            assetPath,
          ),
        ),
        Expanded(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
