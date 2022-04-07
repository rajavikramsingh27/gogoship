import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Components/TextFields.dart';
class AppBarStyle {
  static PreferredSize get appBar => PreferredSize(
    preferredSize: Size.fromHeight(45.0), // here the desired height
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image.asset(
        ImageStyle.Layer1,
        width: 70,
        height: 70,
      ),
      leading: InkWell(
        child: Icon(
          Icons.menu,
          color: ColorStyle.secondaryColor,
          size: 30,
        ),
        onTap: (){},
      ),
      actions: [
        Row(
          children: [
            Text(
              '1,100t',
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
              ),
            ),
          ],
        ),
        SizedBox(
          width: 20,
        )
      ],
    ),

  );
}

