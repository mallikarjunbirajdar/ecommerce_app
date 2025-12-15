
import 'package:e_commerce_app_2/utilis/constants/size.dart';
import 'package:e_commerce_app_2/utilis/helpers/devices_helpers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class UAppbar extends StatelessWidget implements PreferredSizeWidget {
  const UAppbar(
      {super.key,
      this.title,
     this.showBackArrow =false,
     
      this.leadingIcon,
      this.actions,
      this.leadingOnPressed});

  final Widget? title;
  final bool  showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: USizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow
        ?IconButton(onPressed: Get.back, icon: Icon(Icons.arrow_back,color: Colors.white,))
        :leadingIcon !=null
              ?IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) 
              :null,


        title: title,      
        actions: actions,
          
        
       
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(UDeviceHelper.getAppBarHeight());
}
