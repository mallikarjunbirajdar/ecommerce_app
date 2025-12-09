import 'package:e_commerce_app_2/features/authotication/controllers/onboarding/onboarding_controller.dart';
import 'package:e_commerce_app_2/utilis/helpers/devices_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class onboardingSkipBotton extends StatelessWidget {
  const onboardingSkipBotton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    OnboardingController onboardingController=Get.put(OnboardingController());
    return Obx(()=> onboardingController.currentIndex.value==2 ? SizedBox() :  Positioned(
        top: UDeviceHelper.getAppBarHeight(),
        right: 0,
        child: TextButton(
          onPressed: onboardingController.skipPage,
           child: Text("Skip"))));
  }
}