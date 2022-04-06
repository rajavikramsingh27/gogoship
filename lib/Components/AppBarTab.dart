import 'package:flutter/material.dart';
import 'package:gogoship/Styles/ColorStyle.dart';

class AppBarStyle {
  static PreferredSize get appBar => PreferredSize(
    preferredSize: Size.fromHeight(45.0), // here the desired height
    child: AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: true,
      title: Image.asset(
        'assets/images/GOGO1.png',
        // width: 53,
        // height: 80,
      ),
      leading: Icon(
        Icons.menu,
        color: ColorStyle.secondaryColor,
        size: 30,
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

