import 'dart:async';
import 'package:flutter/material.dart';
import 'package:gogoship/Views/OnBording.dart';
import 'package:gogoship/Styles//ImageStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
                    OnBording()
            )
        )
    );

    return Scaffold(
      backgroundColor:  ColorStyle.bgColor,
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
