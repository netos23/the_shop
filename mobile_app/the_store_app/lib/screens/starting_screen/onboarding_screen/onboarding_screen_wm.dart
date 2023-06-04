import 'package:auto_route/auto_route.dart';
import 'package:core/core.dart';
import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:the_store_app/data/catalog/models/short_product.dart';
import 'package:the_store_app/navigation/app_router.dart';
import 'onboarding_screen_model.dart';
import 'onboarding_screen_widget.dart';

abstract class IOnboardingScreenWidgetModel extends IWidgetModel
implements IThemeProvider{
  onSelect() {}

  PageController get pageController;
}

OnboardingScreenWidgetModel defaultOnboardingScreenWidgetModelFactory(BuildContext context) {
  return OnboardingScreenWidgetModel(
      OnboardingScreenModel(context.read()),
  );
}

// TODO: cover with documentation
/// Default widget model for OnboardingScreenWidget
class OnboardingScreenWidgetModel extends WidgetModel<OnboardingScreenWidget, OnboardingScreenModel>
    with ThemeProvider
    implements IOnboardingScreenWidgetModel
{

  OnboardingScreenWidgetModel(OnboardingScreenModel model) : super(model);

  @override
  onSelect() {
    context.router.navigate(CityListRoute());

  }

  @override
  // TODO: implement pageController
  PageController pageController = PageController();
}
