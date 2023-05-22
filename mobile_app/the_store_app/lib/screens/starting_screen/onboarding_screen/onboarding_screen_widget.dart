import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:the_store_app/screens/components/components.dart';
import 'onboarding_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OnboardingScreen module
@RoutePage()
class OnboardingScreenWidget
    extends ElementaryWidget<IOnboardingScreenWidgetModel> {
  const OnboardingScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOnboardingScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOnboardingScreenWidgetModel wm) {
    final PageController controller = PageController();
    List<Widget> pages = [
      MyPage(
          text: "1",
          assetPath: "assets/images/basket2.png",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn)),
      MyPage(
          text: "2",
          assetPath: "assets/images/productBasket.png",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn)),
      MyPage(
          text: "3",
          assetPath: "assets/images/productBasket.png",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn)),
      MyPage(
          text: "4",
          assetPath: "assets/images/productBasket.png",
          controller: controller,
          onTap: () => controller.nextPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn)),
    ];
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
              onPressed: () => wm.onSelect(),
              icon: Icon(
                Icons.close,
                color: wm.colorScheme.primary,
              )),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              SizedBox(
                height: 600,
                child: PageView.builder(
                  controller: controller,
                  // itemCount: pages.length,
                  itemBuilder: (_, index) {
                    return pages[index % pages.length];
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                    height: 50,
                    child: MyFilledButton(
                        onTap: () => controller.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeIn),
                        text: "Далее")),
              ),
              SmoothPageIndicator(
                controller: controller,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final String assetPath;
  final PageController controller;

  const MyPage(
      {Key? key,
      required this.text,
      required this.assetPath,
      required this.controller,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
        child: CardWithText(
          text: text,
          assetPath: assetPath,
        ),
      ),
    ]);
  }
}
