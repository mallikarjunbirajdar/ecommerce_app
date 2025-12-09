import 'package:e_commerce_app_2/screens/splash_screen.dart';
import 'package:e_commerce_app_2/utilis/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: UAppTheme.LightTheme,
      darkTheme:UAppTheme.DarkTheme,
      home:SplashScreen() ,
     
      
    );
  }
}
