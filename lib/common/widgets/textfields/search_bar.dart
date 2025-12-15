import 'package:e_commerce_app_2/common/style/shadow.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/constants/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class USearchBar extends StatelessWidget {
  const USearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      right: USizes.spaceBtwSections,
      left: USizes.spaceBtwSections,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: USizes.md),
        height: 60,
        
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(USizes.borderRadiusLg),
           boxShadow: UShadow.searchBarShadow
           
           //[
          //   BoxShadow(
          //   color: Colors.black.withValues(alpha: 0.1),
          //   spreadRadius: 4.0,
          //   blurRadius: 4.0
          // )
          // ]
      
        ),
        child: Row(
          children: [
            Icon(Icons.search),
            SizedBox(width: USizes.spaceBtwItems),
            Text(UTexts.searchBarTitle,style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
