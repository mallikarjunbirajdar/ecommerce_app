import 'package:e_commerce_app_2/utilis/helpers/devices_helpers.dart';
import 'package:flutter/material.dart';

class UElevatedBotton extends StatelessWidget {
   UElevatedBotton({
    super.key, required this.onPressed, required this.child,
  });
  
   final VoidCallback onPressed;
   final Widget child;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: UDeviceHelper.getScreenWidth(context),
      
      child: ElevatedButton(onPressed: onPressed, child: child));
  }
}