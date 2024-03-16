import 'package:flutter/material.dart';

class TCheckBoxTheme{
  TCheckBoxTheme._();
//s  S
  static CheckboxThemeData lightCheckBoxTheme=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else {
        return Colors.black;
      }
    }
    ),
    fillColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      }else {
        return Colors.transparent;
      }
    }
    ),
  );

  static CheckboxThemeData darkCheckBoxTheme=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.white;
      }else {
        return Colors.black;
      }
    }
    ),
    fillColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected)){
        return Colors.blue;
      }else {
        return Colors.transparent;
      }
    }
    ),
  );


}