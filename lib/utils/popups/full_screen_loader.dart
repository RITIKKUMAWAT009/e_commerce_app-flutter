import 'package:e_commerce_app/common/widgets/loaders/animation_loader.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/colors.dart';

class FullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    print('Inside the fullLoader class');
    showDialog(
      context: Get.overlayContext!,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: THelperFunction.isDarkMode(Get.context!)
              ? TColors.dark
              : Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: 250,
              ),
                  AnimationLoaderWidget(text: text, animation: animation)

            ],
          ),
        ),
      ),
    );
  }
  static stopLoading(){
    Navigator.of(Get.overlayContext!).pop();//closing dialog
  }
}
