import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:e_commerce_app/utils/theme/theme.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
themeMode: ThemeMode.system,
      darkTheme: TAppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      theme: TAppTheme.lightTheme,
      home: Scaffold(
        backgroundColor: TColors.white,
        body: Container(
          child: Center(
            child: Text('hello ',style: TextStyle(color: TColors.black),),
          ),
        ),
      ),
    );
  }
}