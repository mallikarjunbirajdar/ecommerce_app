import 'package:e_commerce_app_2/utilis/constants/colors.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/appbar_Theme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/bottom_theme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/checkbox_theme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/chipTheme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/eleveted_botton_theme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/outlined_botton_theme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/text_filed_theme.dart';
import 'package:e_commerce_app_2/utilis/theme/widgets_theme.dart/text_theme.dart';
import 'package:flutter/material.dart';

class UAppTheme{

UAppTheme._();

static ThemeData LightTheme=ThemeData (
 useMaterial3: true,
 fontFamily: 'Nunito',
 brightness: Brightness.light, 
 primaryColor: UColors.primary,
 disabledColor: UColors.grey,
 textTheme: UTextTheme.lightTextTheme,
 chipTheme: UChipTheme.lightChipTheme,
 scaffoldBackgroundColor: UColors.white,
 appBarTheme: UAppBarTheme.lightAppBarTheme,
 checkboxTheme: UCheckboxTheme.lightCheckboxTheme,
 bottomSheetTheme: UBottomSheetTheme.lightBottomSheetTheme,
 elevatedButtonTheme: UElevatedButtonTheme.lightElevatedButtonTheme,
 outlinedButtonTheme:UOutlinedButtonTheme.lightOutlinedButtonTheme,
 inputDecorationTheme:UTextFormFieldTheme.lightInputDecorationTheme,



);

static ThemeData DarkTheme=ThemeData (
   useMaterial3: true,
 fontFamily: 'Nunito',
 brightness: Brightness.light, 
 primaryColor: UColors.primary,
 disabledColor: UColors.grey,
 textTheme: UTextTheme.darkTextTheme,
  chipTheme: UChipTheme.darkChipTheme,
 scaffoldBackgroundColor: UColors.white,
 appBarTheme: UAppBarTheme.darkAppBarTheme,
 checkboxTheme: UCheckboxTheme.darkCheckboxTheme, 
bottomSheetTheme: UBottomSheetTheme.darkBottomSheetTheme,
elevatedButtonTheme: UElevatedButtonTheme.darkElevatedButtonTheme,
outlinedButtonTheme: UOutlinedButtonTheme.darkOutlinedButtonTheme,
inputDecorationTheme: UTextFormFieldTheme.darkInputDecorationTheme






);

}