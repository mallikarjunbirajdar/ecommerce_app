import 'package:e_commerce_app_2/screens/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SplashScreenController splashScreenController =
        Get.put(SplashScreenController());

    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.blue,
        //   title: Text("Splash Screen"),
        // ),
        body: Image.asset("assets/logo/black_app_logo.png"));
  }
}
