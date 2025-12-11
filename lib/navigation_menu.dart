import 'package:e_commerce_app_2/features/shop/screens/home/home_screen.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class NavigationMenu extends StatelessWidget {
  NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController navigationController =
        Get.put(NavigationController());
    return Scaffold(
        body: Obx(
          () => navigationController
              .screens[navigationController.selectedIndex.value],
        ),
        bottomNavigationBar: Obx(() => NavigationBar(
                elevation: 0,
                backgroundColor: UColors.light,
                indicatorColor: UColors.black.withValues(alpha: 0.1),
                selectedIndex: navigationController.selectedIndex.value,
                onDestinationSelected: (index) {
                  navigationController.selectedIndex.value = index;
                },
                destinations: [
                  NavigationDestination(
                      icon: Icon(Iconsax.home), label: "Home"),
                  NavigationDestination(
                      icon: Icon(Iconsax.shop), label: "Store"),
                  NavigationDestination(
                      icon: Icon(Iconsax.heart), label: "wishlist"),
                  NavigationDestination(
                      icon: Icon(Iconsax.user), label: "Profile"),
                ])));
  }
}

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  List<Widget> screens = [
    HomeScreen(),
    Container(),
    Container(),
    Container(),
  ];
}
