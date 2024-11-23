
import 'package:e_commerce_app/binding/general_binding.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Eccommerce App',
themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
initialBinding: GeneralBindings(),
      // home: const SignUpScreen(),
      home:const Scaffold(backgroundColor: TColors.primary,body: Center(child: SizedBox(child: CircularProgressIndicator(color: TColors.white,)),),),
      // home:const LoginScreen(),
    );
  }
}