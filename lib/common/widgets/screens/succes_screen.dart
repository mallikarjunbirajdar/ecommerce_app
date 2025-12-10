import 'package:e_commerce_app_2/common/style/padding.dart';
import 'package:e_commerce_app_2/common/widgets/botton/UElevatedBotton.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuccesScreen extends StatelessWidget {
  const SuccesScreen({super.key, required this.image, required this.title, required this.ontap, required this.subtitle});

  final String image;
  final String title;
  final String subtitle;

  final VoidCallback ontap;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: UPadding.screenPadding,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(image),
                 SizedBox(height:USizes.spaceBtwItems),
                  Text(title,textAlign:TextAlign.center,style: Theme.of(context).textTheme.headlineMedium),
                  SizedBox(height:USizes.spaceBtwItems),
          
          
          
                  Text(subtitle,style: Theme.of(context).textTheme.labelMedium,textAlign: TextAlign.center,),
                  SizedBox(height:USizes.spaceBtwSections),
          
          
                  UElevatedBotton(onPressed: ontap, child: Text(UTexts.uContinue)),
          
          
            ],
          ),
        ),
      )
    );
  }
}