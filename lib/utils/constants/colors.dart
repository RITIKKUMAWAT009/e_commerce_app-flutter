import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //App basic colors
  static const primary = Color(0xFF4b68ff);
  static const secondary = Color(0xFFFFE248);
  static const accent = Color(0xFFb0c7ff);

  //gradient colors
  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xffff9a9e),
      Color(0xfffad0c4),
      Color(0xfffad0c4),
    ],
  );

  //Text colors
  static const textPrimary = Color(0xFF333333);
  static const textSecondary = Color(0xFF6C7570);
  static const textWhite = Colors.white;

  //background colors
  static const light = Color(0xFFF6F6F6);
  static const dark = Color(0xFF272727);
  static const primaryBackground = Color(0xFFF3F5FF);

  //background container colors
  static const lightContainer = Color(0xfff6f6f6);
  static Color darkContainer = TColors.textWhite.withOpacity(0.1);

  //Button colors
  static const buttonPrimary = Color(0xFF4b68ff);
  static const buttonSecondary = Color(0xff6c7570);
  static const buttonDisabled = Color(0xFFC4c4f4);

  //border colors
  static const borderPrimary = Color(0xffd9d9d9);
  static const borderSecondary = Color(0xffe6e6e6);

  //Error and validation colors
  static const error = Color(0xffd32f2f);
  static Color success = Colors.green.shade900;
  static Color warning = Colors.orange.shade900;
  static Color info = Colors.blue.shade900;

  //natural colors
  static Color black = Colors.black;
  static const Color darkerGrey = Color(0xFF4F4f4f);
  static const Color darkGrey = Color(0xff939393);
  static const Color grey = Color(0xffe0e0e0);
  static const Color softGrey = Color(0xfff4f4f4);
  static const Color lightGrey = Color(0xfff9f9f9);
  static const Color white = Color(0xffffffff);
}
