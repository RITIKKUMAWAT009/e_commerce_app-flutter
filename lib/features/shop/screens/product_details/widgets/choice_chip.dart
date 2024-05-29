import 'dart:ffi';

import 'package:e_commerce_app/common/widgets/custom_shape/container/circular_container.dart';
import 'package:e_commerce_app/utils/helper/helper_function.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/colors.dart';

class RChoiceChip extends StatelessWidget {
  const RChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor=THelperFunction.getColor(text)!=null;
    final isDark=THelperFunction.isDarkMode(context);
    return Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent, ),
      child: ChoiceChip(
        label:isDark? (isColor ? const SizedBox() : Text(text)):(isColor ? const SizedBox() : Text(text)),
        selected: selected,
        labelStyle: TextStyle(color:isDark?( selected ? TColors.white : null):( selected ? TColors.white : null)),
        onSelected:onSelected,
        avatar: isColor?CircularContainer(
          width: 50,
          height: 50,radius: 20,
          backgroundColor:THelperFunction.getColor(text)!):null,
        shape: isDark?(isColor?const CircleBorder():null):(isColor?const CircleBorder():null),
        backgroundColor:isDark?(isColor?THelperFunction.getColor(text)!:null):(isColor?THelperFunction.getColor(text)!:null),
        labelPadding:isDark?(isColor? const EdgeInsets.all(0):null):(isColor? const EdgeInsets.all(0):null),
        selectedColor:isDark?(isColor?THelperFunction.getColor(text)!:null):(isColor?THelperFunction.getColor(text)!:null),
        padding:isDark?(isColor? const EdgeInsets.all(0):null):(isColor? const EdgeInsets.all(0):null)
      ),
    );
  }
}
