import 'package:flutter/material.dart';
import 'package:gogoship/Views/CreateAccount.dart';
import 'package:gogoship/Views/LogIn.dart';
import 'package:flutter_swiper_plus/flutter_swiper_plus.dart';

class AuthList extends StatelessWidget {
  const AuthList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  Swiper(
          itemBuilder: (BuildContext context, int index) {
            if (index == 0)
              return LogIn();
            else
              return CreateAccount();
          },
          autoplay: false,
          control: SwiperControl(
            size: 0,
            color: Colors.transparent,
            disableColor: Colors.transparent,
            iconPrevious: Icons.arrow_back_ios,
            iconNext: Icons.arrow_forward_ios,
          ),
          itemCount: 2,
          scrollDirection: Axis.vertical,
          loop: false,
        ),);
  }
}

