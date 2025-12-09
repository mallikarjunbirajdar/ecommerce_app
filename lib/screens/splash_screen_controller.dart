import 'package:e_commerce_app_2/features/authotication/screens/onboarding/onboardingscreen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    splashpage();
  }

  Future<void> splashpage() async {
    await Future.delayed(const Duration(seconds: 3));
    Get.offAll(() => Onboardingscreen());   // Back remove
  }
}
