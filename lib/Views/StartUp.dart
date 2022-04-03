import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Utils/Global.dart';
import 'package:gogoship/Views/AuthList.dart';
import 'package:gogoship/Styles//ImageStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';


class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    AuthList()
            )
        )
    );

    return Scaffold(
      backgroundColor:  ColorStyle.fromHex("hexString"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child:  Image.asset(ImageStyle.Layer),
          ),
        ],
      ),
    );

  }
}
