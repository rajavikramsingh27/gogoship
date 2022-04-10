import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Utils/Constant.dart';

class TextStyles {
  static TextStyle get textSize_20 => TextStyle(
        fontSize: 20,
        fontFamily: kFontFamily,
      );

  static TextStyle get textSize_31 => TextStyle(
        fontSize: 31,
    fontFamily: kFontFamily,
      );

  static TextStyle get textSize_22 => TextStyle(
        fontSize: 22,
        color: ColorStyle.primaryColor,
        fontWeight: FontWeight.normal,
    fontFamily: kFontFamily,

  );

  static TextStyle get textSize_14 => TextStyle(
        fontSize: 14,
    fontFamily: kFontFamily,

    color: ColorStyle.titleColor.withOpacity(0.6),
        fontWeight: FontWeight.w400,
      );

  static TextStyle get textSize_15 => TextStyle(
    fontSize: 15,
    fontFamily: kFontFamily,

    color: ColorStyle.titleColor.withOpacity(0.6),
    fontWeight: FontWeight.w400,
  );

  static TextStyle get textSize_16 => TextStyle(
        fontSize: 16,
    // fontFamily: kFontFamily,
        color: ColorStyle.primaryColor,
        fontWeight: FontWeight.normal,
      );

  static TextStyle get textSize_18 => TextStyle(
        fontSize: 18,
        color: ColorStyle.primaryColor,
        fontWeight: FontWeight.normal,
    fontFamily: kFontFamily,
      );
}
