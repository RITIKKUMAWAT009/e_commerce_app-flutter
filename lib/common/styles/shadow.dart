import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/cupertino.dart';

class ShadowStyle{
  static final verticalBoxShadow=BoxShadow(
    color: TColors.primary.withOpacity(0.3),
    blurRadius: 5,
    spreadRadius:2,
    offset:const Offset(0,2),
  );
  static final horizontalBoxShadow=BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius:7,
    offset:const Offset(0,2),
  );
}