import 'package:e_commerce_app_2/features/shop/controller/home/home_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class bannersDotNavigation extends StatelessWidget {
  const bannersDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     final controller =HomeController.instance;

    return Obx(()=>SmoothPageIndicator(
      controller: PageController(initialPage: controller.currentIndex.value),
      count: 5,
      effect: WormEffect(dotHeight: 6),
      
    ));
  }
}
