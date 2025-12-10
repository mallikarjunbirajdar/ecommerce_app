import 'package:e_commerce_app_2/common/widgets/botton/UElevatedBotton.dart';
import 'package:e_commerce_app_2/features/authotication/screens/forgot_password/forgot_password_screen.dart';
import 'package:e_commerce_app_2/features/authotication/screens/signup/verify_emailscreen.dart';
import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class USignup_Form extends StatelessWidget {
  const USignup_Form({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Iconsax.user),
                        labelText: UTexts.firstName))),
            SizedBox(width: USizes.spaceBtwInputFields),
            Expanded(
                child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: UTexts.lastName),
            )),
          ],
        ),
      
    
    SizedBox(height: USizes.spaceBtwInputFields),
    TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.direct_right),
          labelText: UTexts.email),
    ),
    SizedBox(height: USizes.spaceBtwInputFields),
    TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.call),
          labelText: UTexts.phoneNumber),
    ),
    SizedBox(height: USizes.spaceBtwInputFields),
    TextFormField(
      decoration: InputDecoration(
          prefixIcon: Icon(Iconsax.password_check),
          labelText: UTexts.password),
    ),
    SizedBox(height: USizes.spaceBtwInputFields),
    Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(value: true, onChanged: (value) {}),
        RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodySmall,
                children: [
              TextSpan(text: '${UTexts.iAgreeTo}'),
              TextSpan(
                  text: '${UTexts.privacyPolicy}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(
                          color: UColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: UColors.primary)),
              TextSpan(text: '${UTexts.and}'),
              TextSpan(
                  text: '${UTexts.termsOfUse}',
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(
                          color: UColors.primary,
                          decoration: TextDecoration.underline,
                          decorationColor: UColors.primary)),
            ]))
      ],
    ),
    SizedBox(height: USizes.spaceBtwSections),
    UElevatedBotton(
        onPressed: () {
          Get.to(()=> VerifyEmailscreen());
         // Get.to( ForgotPasswordScreen());
        }, child: Text(UTexts.createAccount)),
    SizedBox(height: USizes.spaceBtwSections),]);
  }
}
