
import 'package:e_commerce_app_2/features/authotication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_2/features/authotication/screens/onboarding/widgets/onboardingNavigationBotton.dart';
import 'package:e_commerce_app_2/features/authotication/screens/onboarding/widgets/onboardingNetxBotton.dart';
import 'package:e_commerce_app_2/features/authotication/screens/onboarding/widgets/onboardingSkipBotton.dart';
import 'package:e_commerce_app_2/features/authotication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';

import 'package:e_commerce_app_2/utilis/constants/texts.dart';


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Onboardingscreen extends StatelessWidget {
  const Onboardingscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController=Get.put(OnboardingController());
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: USizes.defaultSpace),
      child: Stack(
        children: [
          PageView(
            controller: onboardingController.pageController,
            onPageChanged: onboardingController.updatePageIndicator,
            children: [
              onboarding_page(
                  
                  animation: UImages.onboarding1Animation,
                  title: UTexts.OnboardingTitle1,
                  subtitle: UTexts.OnboardingSubTitle1),
              onboarding_page(
                  animation: UImages.onboarding2Animation,
                  title: UTexts.OnboardingTitle2,
                  subtitle: UTexts.OnboardingSubTitle2),
              onboarding_page(
                  animation: UImages.onboarding3Animation,
                  title: UTexts.OnboardingTitle3,
                  subtitle: UTexts.OnboardingSubTitle3)
            ],
          ),
          onboardoingDotNavigation(),
          onboardingNetxBotton(),
          onboardingSkipBotton()
        ],
      ),
    ));
  }
}
