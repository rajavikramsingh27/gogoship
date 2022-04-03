import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';

class EffectStyle {
  static curveAuth(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
      ),

      // boxShadow: [
      //   BoxShadow(
      //     color: Colors.black.withOpacity(0.1),
      //     blurRadius: 6,
      //     offset: Offset(0, 0), // Shadow position
      //   ),
      // ],
    );
  }

  static paddingAuthWhite() {
    return EdgeInsets.only(top: 30, bottom: 20, left: 30, right: 30);
  }

  static borderRadiusAuth(double value) {
    return BorderRadius.circular(value);
  }

  static borderAllAuth(Color color) {
    return Border.all(
      color: color,
      width: 1
    );
  }

}
