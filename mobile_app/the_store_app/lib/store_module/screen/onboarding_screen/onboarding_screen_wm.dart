import 'package:auto_route/auto_route.dart';
import 'package:elementary/elementary.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../router/app_router.dart';
import '../../../src/assets/theme_provider.dart';
import 'onboarding_screen_model.dart';
import 'onboarding_screen_widget.dart';

abstract class IOnboardingPageWidgetModel extends IWidgetModel
    implements IThemeProvider {
  PageController get controller;

  VoidCallback buildNextPageCallback();

  void onSelect();
  String buildButtonText();
}

OnboardingPageWidgetModel defaultOnboardingPageWidgetModelFactory(
    BuildContext context) {
  return OnboardingPageWidgetModel(
    OnboardingPageModel(context.read()),
  );
}

// TODO: cover with documentation
/// Default widget model for OnboardingScreenWidget
class OnboardingPageWidgetModel
    extends WidgetModel<OnboardingPageWidget, OnboardingPageModel>
    with ThemeProvider
    implements IOnboardingPageWidgetModel {
  OnboardingPageWidgetModel(OnboardingPageModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
    FirebaseAnalytics.instance.logTutorialBegin();
  }

  @override
  final controller = PageController();

  @override
  void onSelect() {
    FirebaseAnalytics.instance.logTutorialComplete();
    context.router.replace(CityListRoute());
  }

  @override
  String buildButtonText() {
    final page = controller.page?.toInt() ?? 0;

    if (page >= widget.pages.length - 1) {
      return 'Начать';
    }

    return 'Далее';
  }

  @override
  VoidCallback buildNextPageCallback() {
    final page = controller.page?.toInt() ?? 0;

    if (page >= widget.pages.length - 1) {
      return onSelect;
    }

    return () => controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeIn,
        );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
