import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';

class DropDownCustom extends StatelessWidget {
  final String? selectedValue;
  final Color? colorSelect;
  final List<String>? arrDropDown;
  final Function(String?)? onTap;

  const DropDownCustom({
    Key? key,
    this.selectedValue,
    this.colorSelect = Colors.white,
    this.onTap,
    this.arrDropDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      underline: Container(),
      iconEnabledColor: ColorStyle.bgColor,
      iconSize: 30,
      hint: Text(
        selectedValue!,
        style: TextStyles.textSize_16.apply(
          color: colorSelect
        ),
      ),
      items: arrDropDown?.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(
            value,
            style: TextStyles.textSize_16.apply(color: Colors.black),
          ),
        );
      }).toList(),
      onChanged: onTap,
    );
  }
}
