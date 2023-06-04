import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'onboarding_screen_model.dart';
import 'onboarding_screen_widget.dart';

abstract class IOnboardingScreenWidgetModel extends IWidgetModel
    implements IThemeProvider {
  PageController get controller;

  VoidCallback buildNextPageCallback();

  void onSelect();
  String buildButtonText();
}

OnboardingScreenWidgetModel defaultOnboardingScreenWidgetModelFactory(
    BuildContext context) {
  return OnboardingScreenWidgetModel(
    OnboardingScreenModel(context.read()),
  );
}

// TODO: cover with documentation
/// Default widget model for OnboardingScreenWidget
class OnboardingScreenWidgetModel
    extends WidgetModel<OnboardingScreenWidget, OnboardingScreenModel>
    with ThemeProvider
    implements IOnboardingScreenWidgetModel {
  OnboardingScreenWidgetModel(OnboardingScreenModel model) : super(model);

  @override
  void initWidgetModel() {
    super.initWidgetModel();
  }

  @override
  final controller = PageController();

  @override
  void onSelect() {
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
