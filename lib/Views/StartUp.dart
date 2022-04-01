import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Utils/Global.dart';
import 'package:gogoship/Views/CreateAccount.dart';


class StartUp extends StatelessWidget {
  const StartUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  HexColor('#ffd700'),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        InkWell(
          child:  Container(
            alignment: Alignment.center,
            child:  Image.asset('assets/images/Layer.png'),
          ),
          onTap: (){
            Get.to(CreateAccount());
          },
        )
        ],
      ),
    );
  }
}
