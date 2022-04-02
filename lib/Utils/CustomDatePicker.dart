import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gogoship/Utils/ColorStyle.dart';
import 'package:get/get.dart';


class CustomDatePicker extends StatelessWidget {
  final DateTime selectedDate;
  final TextEditingController dateController;

  const CustomDatePicker(this.selectedDate, this.dateController);

  @override
  Widget build(BuildContext context) {
    return Obx(() => datePicker());
  }

  Widget datePicker() {
    return Platform.isIOS
        ? Container(color: Colors.red,)
        : Container(color: Colors.yellow,);
  }

}

