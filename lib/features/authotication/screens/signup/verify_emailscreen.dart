import 'package:e_commerce_app_2/common/style/padding.dart';
import 'package:e_commerce_app_2/common/widgets/botton/UElevatedBotton.dart';
import 'package:e_commerce_app_2/common/widgets/screens/succes_screen.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class VerifyEmailscreen extends StatelessWidget {
  const VerifyEmailscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.clear)),
        ],
      ),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset("assets/images/mail_illustration.png"),
              SizedBox(height: USizes.spaceBtwItems),
              Text(UTexts.verifyEmailTitle,
                  style: Theme.of(context).textTheme.headlineMedium),
              SizedBox(height: USizes.spaceBtwItems),
              Text("unknownpro@gmail.com",
                  style: Theme.of(context).textTheme.labelLarge),
                  
              Text(UTexts.resetPasswordSubTitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
              SizedBox(height:USizes.spaceBtwSections),


              UElevatedBotton(onPressed: (){
                Get.to(()=>SuccesScreen(image: "assets/images/account_created.png", 
                title: UTexts.accountCreatedTitle,
                subtitle: UTexts.resetPasswordSubTitle,
                ontap: () {  }, ));
              }, child: Text(UTexts.uContinue)),
              TextButton(onPressed: (){}, child: Text("Resend Email"))
            ],
          ),
        ),
      ),
    );
  }
}
