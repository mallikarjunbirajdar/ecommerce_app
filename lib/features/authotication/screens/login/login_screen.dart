import 'package:e_commerce_app_2/common/style/padding.dart';

import 'package:e_commerce_app_2/common/widgets/botton/socialBotton.dart';
import 'package:e_commerce_app_2/common/widgets/loginSignUp/form_divider.dart';
import 'package:e_commerce_app_2/features/authotication/screen/onboarding/login/Widgets/login_header.dart';
import 'package:e_commerce_app_2/features/authotication/screens/login/widgets/login_Form.dart';
import 'package:e_commerce_app_2/features/authotication/screens/login/widgets/login_header.dart';

import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';


import 'package:flutter/material.dart';



class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //final dark = UHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ULoginHeader(),
              SizedBox(height: USizes.spaceBtwSections),
              ULoginForm(),
              SizedBox(height: USizes.spaceBtwSections),
              ULoginDivider(title: UTexts.orSignInWith),
              SizedBox(height: USizes.spaceBtwSections),
              USocialButtons()
            ],
          ),
        ),
      ),
    );
  }
}
