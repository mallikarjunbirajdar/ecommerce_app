import 'package:e_commerce_app_2/common/style/padding.dart';
import 'package:e_commerce_app_2/common/widgets/botton/UElevatedBotton.dart';
import 'package:e_commerce_app_2/features/authotication/screens/forgot_password/resetPassword_screen.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
          
            Text(UTexts.forgetPasswordTitle,style: Theme.of(context).textTheme.headlineMedium,),
            SizedBox(height: USizes.spaceBtwItems),
            Text(UTexts.forgetPasswordSubTitle,style: Theme.of(context).textTheme.bodySmall),
            SizedBox(height: USizes.spaceBtwSections),
            TextFormField(
              decoration: InputDecoration(
                labelText: UTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
                 
              ),
            ),
            SizedBox(height: USizes.spaceBtwSections),
            UElevatedBotton(onPressed: (){
              Get.to(ResetpasswordScreen ());
            }, child:Text(UTexts.submit))



          ],),
        ),
      ),
   

    );
  }
}