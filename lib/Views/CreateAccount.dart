import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Utils/Global.dart';
import 'package:gogoship/Views/VerificationCode.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/Components.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Expanded(child: Container(color: ColorStyle.bgColor,)),
                  Expanded(child: Container(color: Colors.white,)),
                ],
              )
          ),
          Column(
            children: [
              Expanded(
                  child: Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: MediaQuery.of(context).size.width,
                            alignment: Alignment.center,
                            child: Image.asset(
                              'assets/images/Layer.png',
                              width: 53,
                              height: 80,
                            ),
                          ),
                          Container(
            decoration: EffectStyle.curveAuth(Colors.white),
            width: double.infinity,
            padding: EffectStyle.paddingAuthWhite(),
            child: Column(
              children: [
                Text("Create your account", style: TextStyles.textSize_20),
                SizedBox(
                      height: 40,
                ),
                ComponentsTF(
                      title: 'EMAIL',
                      hintText: 'johnsondoe@nomail.com',
                ),
                SizedBox(
                      height: 12,
                ),
                ComponentsTF(
                      title: 'PHONE',
                      hintText: '9876543210',
                ),
                SizedBox(
                      height: 12,
                ),
                ComponentsTFPassword(
                      title: 'PASSWORD',
                      hintText: '******',
                ),
                SizedBox(
                      height: 14,
                ),
                ComponentsAuthSubmit.submitAuth('GET STARTED', () {
                  Get.to(VerificationCode());
                }),
                // InkWell(
                //       child: ComponentsAuthSubmit.submitAuth('GET STARTED'),
                //       onTap: () {
                //         Get.to(VerificationCode());
                //       },
                // ),
                SizedBox(
                      height: 10,
                ),
                ComponentsSocialSignIn(),
              ],
            ),
          ),
                        ],
                      ),
                    ),
                  )
              ),
              ComponentsAuthBottom.authBottom(
                  'Existing User? ', 'Swipe Up', Icon(Icons.keyboard_arrow_down)
              )
            ],
          ),
        ],
      ),
    );
  }
}
