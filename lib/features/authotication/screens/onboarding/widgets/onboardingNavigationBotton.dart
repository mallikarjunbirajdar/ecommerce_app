import 'package:e_commerce_app_2/features/authotication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_2/utilis/helpers/devices_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onboardoingDotNavigation extends StatelessWidget {
  const onboardoingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController=Get.put(OnboardingController());
    return Positioned(
        bottom: UDeviceHelper.getBottomNavigationBarHeight() * 3,
        left: UDeviceHelper.getScreenWidth(context) / 3,
        right: UDeviceHelper.getScreenWidth(context) / 3,
        child: SmoothPageIndicator(

          controller:onboardingController.pageController,
          onDotClicked: onboardingController.dotNevigationClick,
          count: 3,
          effect: ExpandingDotsEffect(dotHeight: 6.0),
        ));
  }
}
