import 'package:e_commerce_app_2/common/widgets/botton/UElevatedBotton.dart';
import 'package:e_commerce_app_2/features/authotication/screens/forgot_password/forgot_password_screen.dart';

import 'package:e_commerce_app_2/features/authotication/screens/signup/signUp_screen.dart';
import 'package:e_commerce_app_2/navigation_menu.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ULoginForm extends StatelessWidget {
  const ULoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: UTexts.email),
      ),
      SizedBox(height: USizes.spaceBtwInputFields),
      TextFormField(
        decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.password_check),
            labelText: UTexts.password,
            suffixIcon: Icon(Iconsax.eye)),
      ),
      SizedBox(height: USizes.spaceBtwInputFields / 2),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Checkbox(value: false, onChanged: (value) {}),
              Text(UTexts.rememberMe),
            ],
          ),
          TextButton(
              onPressed: () {
                Get.to(()=>ForgotPasswordScreen());
              }, child: Text(UTexts.forgetPassword))
        ],
      ),
      SizedBox(height: USizes.spaceBtwSections),
      UElevatedBotton(onPressed: () {
        Get.to(()=> NavigationMenu());


      }, child: Text(UTexts.signIn)),
      SizedBox(height: USizes.spaceBtwSections / 2),
    SizedBox(
      width: double.infinity,
      child: OutlinedButton(
        
            onPressed: () {
              Get.to( SignupScreen());
            }, child: Text(UTexts.createAccount)),
    )
    ]);
  }
}

