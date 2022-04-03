import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';



class TextStyles {
  static TextStyle get heading1 => TextStyle(
        fontSize: 20,
      );

  static TextStyle get Title => TextStyle(
      fontSize: 14,
      color: ColorStyle.titleColor.withOpacity(0.6),
      fontWeight: FontWeight.w400,
  );

  static TextStyle get button => TextStyle(
    fontSize: 16,
    color: ColorStyle.primaryColor,
    fontWeight: FontWeight.normal,
  );

}
