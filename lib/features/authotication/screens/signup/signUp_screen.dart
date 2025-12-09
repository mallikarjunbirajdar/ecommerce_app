import 'package:e_commerce_app_2/common/style/padding.dart';
import 'package:e_commerce_app_2/common/widgets/botton/socialBotton.dart';
import 'package:e_commerce_app_2/common/widgets/loginSignUp/form_divider.dart';

import 'package:e_commerce_app_2/features/authotication/screens/signup/widgets/Signup_form.dart';

import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';

import 'package:flutter/material.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                UTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(height: USizes.spaceBtwSections),
              USignup_Form(),
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

