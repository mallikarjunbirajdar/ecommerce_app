import 'package:e_commerce_app_2/common/widgets/botton/UElevatedBotton.dart';
import 'package:e_commerce_app_2/features/authotication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class onboardingNetxBotton extends StatelessWidget {
  const onboardingNetxBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final OnboardingController onboardingController=Get.put(OnboardingController());
    return Positioned(
      left: 0,
      right: 0,
        bottom: USizes.spaceBtwItems / 2,
        child: UElevatedBotton(
          onPressed: onboardingController.nextPage,
          child: Obx(()=>Text(onboardingController.currentIndex.value==2 ? "GetStarted":"Next"),)
        ));
  }
}