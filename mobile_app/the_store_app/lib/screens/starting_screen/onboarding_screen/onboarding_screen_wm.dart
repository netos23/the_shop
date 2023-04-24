import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen_model.dart';
import 'onboarding_screen_widget.dart';

abstract class IOnboardingScreenWidgetModel extends IWidgetModel {
}

OnboardingScreenWidgetModel defaultOnboardingScreenWidgetModelFactory(BuildContext context) {
  return OnboardingScreenWidgetModel();
}

// TODO: cover with documentation
/// Default widget model for OnboardingScreenWidget
class OnboardingScreenWidgetModel extends WidgetModel<OnboardingScreenWidget, OnboardingScreenModel>
    implements IOnboardingScreenWidgetModel {

  OnboardingScreenWidgetModel(OnboardingScreenModel model) : super(model);
}
