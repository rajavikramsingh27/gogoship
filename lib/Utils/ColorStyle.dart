import 'package:flutter/material.dart';

class ColorStyle {
  static final Color bgColor =  fromHex("ffd700");
  static final Color primaryColor =  fromHex("115173");

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
