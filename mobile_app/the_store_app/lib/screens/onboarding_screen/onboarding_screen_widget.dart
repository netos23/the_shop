import 'package:elementary/elementary.dart';
import 'package:flutter/material.dart';
import 'onboarding_screen_wm.dart';

// TODO: cover with documentation
/// Main widget for OnboardingScreen module
class OnboardingScreenWidget extends ElementaryWidget<IOnboardingScreenWidgetModel> {
  const OnboardingScreenWidget({
    Key? key,
    WidgetModelFactory wmFactory = defaultOnboardingScreenWidgetModelFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IOnboardingScreenWidgetModel wm) {
    return Container();
  }
}
