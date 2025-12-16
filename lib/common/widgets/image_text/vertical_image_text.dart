import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UVerticalImagesText extends StatelessWidget {
  const UVerticalImagesText({
    super.key, required this.title, required this.image, required this.textColor, this.backgroundColor, this.onTap,
  });

  final String title;
  final String image;
  final Color textColor;
  final Color ? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 56,
            width: 56,
            
          
            padding: EdgeInsets.all(USizes.sm),
            decoration: BoxDecoration(
              
                color: UColors.white,
                borderRadius: BorderRadius.circular(150)),
                
            child: 
            Image.asset(image,fit: BoxFit.cover,),
          ),
          SizedBox(height: USizes.spaceBtwItems / 2),
          SizedBox(
            width: 55,  
            child: Text(
             title,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: textColor),
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
