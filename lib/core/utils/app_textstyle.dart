import 'package:flutter/material.dart';

class AppTextStyles {

  TextStyle normalText({double fontSize = 12.0}){
    return TextStyle(fontSize: fontSize,fontFamily: 'font_regular');
  }
  TextStyle lightTitle({double fontSize = 16.0}){
    return TextStyle(fontSize: fontSize,fontFamily: 'font_regular');
  }
  TextStyle titleText({double fontSize = 20.0}){
    return TextStyle(fontSize:fontSize,fontFamily: 'font_regular');
  }
  TextStyle smallText({double fontSize = 10.0}){
    return TextStyle(fontSize:fontSize,fontFamily: 'font_regular');
  }



}

extension TextStyleExtension on TextStyle{
  TextStyle textColorNormal(Color color) => copyWith(color: color ,fontFamily: 'font_regular');
  TextStyle textColorBold(Color color) => copyWith(color: color,fontFamily: 'font_bold' ,fontWeight: FontWeight.bold);

}