import 'package:e_commerce_app_2/common/style/padding.dart';
import 'package:e_commerce_app_2/features/authotication/screens/login/login_screen.dart';
import 'package:e_commerce_app_2/utilis/constants/images.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ResetpasswordScreen extends StatelessWidget {
  const ResetpasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.offAll(()=> LoginScreen()), icon: Icon(CupertinoIcons.clear))
        ],

      ),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(UImages.mailSentImage)
              
            ],
          ),
        ),
      ),

    );
  }
}