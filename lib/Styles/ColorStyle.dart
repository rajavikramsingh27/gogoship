import 'package:flutter/material.dart';

class ColorStyle {
  static final Color bgColor =  fromHex("ffd700");
  static final Color primaryColor =  Colors.white;
  static final Color secondaryColor =  fromHex("#115173");
  static final Color titleColor =  fromHex("#011947");
  static final Color borderColorTF =  fromHex("#013088");


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
