import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';



class TextStyles {
  static TextStyle get heading1 => TextStyle(
        fontSize: 20,
    fontFamily: 'GEDinarOne',
      );
  static TextStyle get heading2 => TextStyle(
    fontSize: 31,
  );
  static TextStyle get button2 => TextStyle(
    fontSize: 22,
    color: ColorStyle.primaryColor,
    fontWeight: FontWeight.normal,
  );
  static TextStyle get Title => TextStyle(
      fontSize: 14,
    fontFamily: 'GEDinarOne',

    color: ColorStyle.titleColor.withOpacity(0.6),
      fontWeight: FontWeight.w400,
  );

  static TextStyle get button => TextStyle(
    fontSize: 16,
    fontFamily: 'GEDinarOne',
    color: ColorStyle.primaryColor,
    fontWeight: FontWeight.normal,
  );



  static TextStyle get button1 => TextStyle(
    fontSize: 18,
    color: ColorStyle.primaryColor,
    fontWeight: FontWeight.normal,
  );

}
