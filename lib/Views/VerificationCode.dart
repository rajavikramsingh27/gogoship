import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/VarificationCodeController.dart';
import 'package:gogoship/Styles/SizeStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/Components.dart';

class VerificationCode extends StatelessWidget {
  AppBar appBar = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
  );

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(VerificationCodeController());

    return Scaffold(
      backgroundColor: ColorStyle.bgColor,
      appBar: this.appBar,
      body: GetBuilder(
        init: VerificationCodeController(),
        initState: (state) {
          controller.reset();
        },
        builder: (authController) {
          return Obx(
                () => SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/Layer.png',
                    width: 53,
                    height: 80,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    decoration: EffectStyle.curveAuth(Colors.white),
                    width: double.infinity,
                    height: controller.height.value - 80 - 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: EffectStyle.paddingAuthWhite(),
                          child: Column(
                            children: [
                              Text("Enter Verification Code",
                                  style: TextStyles.heading1),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: double.infinity,
                                // decoration: ,
                                child: Text("4-DIGIT CODE",
                                    style: TextStyles.button.apply(
                                        color: ColorStyle.titleColor,
                                        fontSizeDelta: 0.1)),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Container(
                                height: SizeStyle.sizeAuthBox,
                                width: MediaQuery.of(context).size.width,
                                padding: EdgeInsets.only(
                                  left: 24,
                                  right: 24,
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.primaryColor,
                                    borderRadius: EffectStyle.borderRadiusAuth(
                                        SizeStyle.radius),
                                    border: EffectStyle.borderAllAuth(
                                        ColorStyle.borderColorTF)),
                                child: Row(
                                  children: [
                                    Expanded(
                                        child: Stack(
                                          children: [
                                            if(controller.txtOTP_First.value.text.isEmpty)
                                              Center(
                                                  child: Container(
                                                    height: 10,
                                                    decoration: BoxDecoration(
                                                        color: ColorStyle.secondaryColor,
                                                        borderRadius:
                                                        EffectStyle.borderRadiusAuth(
                                                            10)),
                                                  )),
                                            TextField(
                                              autofocus: true,
                                              controller:
                                              controller.txtOTP_First.value,
                                              focusNode: controller.focusFirst,
                                              textAlign: TextAlign.center,
                                              maxLength: 1,
                                              keyboardType: TextInputType.number,
                                              style: TextStyle(fontSize: 30),
                                              decoration: InputDecoration(
                                                counter: Offstage(),
                                                border: InputBorder.none,
                                              ),
                                              onChanged: (text) {
                                                if (controller.txtOTP_First.value.text.length > 0)
                                                  controller.focusSecond
                                                      .requestFocus();
                                              },
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        child: Stack(
                                          children: [
                                            if(controller.txtOTP_Second.value.text.isEmpty)
                                            Center(
                                                child: Container(
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle.secondaryColor,
                                                      borderRadius:
                                                      EffectStyle.borderRadiusAuth(
                                                          10)),
                                                )),
                                            TextField(
                                              autofocus: true,
                                              controller:
                                              controller.txtOTP_Second.value,
                                              focusNode: controller.focusSecond,
                                              textAlign: TextAlign.center,
                                              maxLength: 1,
                                              // autofocus: true,
                                              keyboardType: TextInputType.number,
                                              style: TextStyle(fontSize: 30),
                                              decoration: InputDecoration(
                                                counter: Offstage(),
                                                border: InputBorder.none,
                                              ),
                                              onChanged: (text) {
                                                print("text text text text text text text text text text text ");
                                                print(text);
                                                if (controller.txtOTP_Second.value.text.length > 0)
                                                  controller.focusThird
                                                      .requestFocus();
                                                else if (controller.txtOTP_Second.value.text == '')
                                                  controller.focusFirst
                                                      .requestFocus();
                                              },
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        child: Stack(
                                          children: [
                                            if(controller.txtOTP_Third.value.text.isEmpty)
                                            Center(
                                                child: Container(
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle.secondaryColor,
                                                      borderRadius:
                                                      EffectStyle.borderRadiusAuth(
                                                          10)),
                                                )),
                                            TextField(
                                              autofocus: true,
                                              controller:
                                              controller.txtOTP_Third.value,
                                              focusNode: controller.focusThird,
                                              textAlign: TextAlign.center,
                                              maxLength: 1,
                                              // autofocus: true,
                                              keyboardType: TextInputType.number,
                                              style: TextStyle(fontSize: 30),
                                              decoration: InputDecoration(
                                                counter: Offstage(),
                                                border: InputBorder.none,
                                              ),
                                              onChanged: (text) {
                                                if (controller.txtOTP_Third.value.text.length > 0)
                                                  controller.focusFourth
                                                      .requestFocus();
                                                else if (controller.txtOTP_Third.value.text == '')
                                                  controller.focusSecond
                                                      .requestFocus();
                                              },
                                            ),
                                          ],
                                        )),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                        child: Stack(
                                          children: [
                                            if(controller.txtOTP_Fourth.value.text.isEmpty)
                                            Center(
                                                child: Container(
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                      color: ColorStyle.secondaryColor,
                                                      borderRadius:
                                                      EffectStyle.borderRadiusAuth(
                                                          10)),
                                                )),
                                            TextField(
                                              autofocus: true,
                                              controller:
                                              controller.txtOTP_Fourth.value,
                                              focusNode: controller.focusFourth,
                                              textAlign: TextAlign.center,
                                              maxLength: 1,
                                              // autofocus: true,
                                              keyboardType: TextInputType.number,
                                              style: TextStyle(fontSize: 30),
                                              decoration: InputDecoration(
                                                counter: Offstage(),
                                                border: InputBorder.none,
                                              ),
                                              onChanged: (text) {
                                                if (controller.txtOTP_Fourth.value.text.length > 0)
                                                  // Get.focusScope?.unfocus();
                                                  debugPrint("Hello");
                                                else if (controller.txtOTP_Fourth.value.text == '')
                                                  controller.focusThird
                                                      .requestFocus();
                                                // else
                                              },
                                            ),
                                          ],
                                        )),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 14,
                              ),
                              ComponentsAuthSubmit.submitAuth('Authenticate',
                                      () {
                                    controller.authenticate();
                                  }),
                              // InkWell(
                              //   child:
                              //   ComponentsAuthSubmit.submitAuth('Aunthenticate'),
                              //   onTap: () {
                              //     Get.to(VerificationCode());
                              //   },
                              // ),
                            ],
                          ),
                        ),
                        ComponentsAuthBottom.authBottom(
                            'Resend the code', '', Container())
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

