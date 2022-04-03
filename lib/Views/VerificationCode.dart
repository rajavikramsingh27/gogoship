import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:gogoship/Styles/SizeStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/Components.dart';

class VerificationCode extends StatefulWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  _VerificationCodeState createState() => _VerificationCodeState();
}

class _VerificationCodeState extends State<VerificationCode> {

  AppBar appBar = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
  );

  double height = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(milliseconds: 50), () {
      height = MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + kToolbarHeight);
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorStyle.bgColor,
        appBar: this.appBar,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                'assets/images/Layer.png',
                width: 53,
                height: 80,
              ),
              SizedBox(height: 50,),
              Container(
                decoration: EffectStyle.curveAuth(Colors.white),
                width: double.infinity,
                height: height-80-50,
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
                                borderRadius: EffectStyle.borderRadiusAuth(SizeStyle.radius),
                                border: EffectStyle.borderAllAuth(ColorStyle.borderColorTF)
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: Container(
                                              height: 10,
                                              decoration: BoxDecoration(
                                                  color: ColorStyle.secondaryColor,
                                                  borderRadius: EffectStyle.borderRadiusAuth(10)
                                              ),
                                            )),
                                        TextField(
                                          textAlign: TextAlign.center,
                                          maxLength: 1,
                                          // autofocus: true,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                              fontSize: 30
                                          ),
                                          decoration: InputDecoration(
                                            counter: Offstage(),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                SizedBox(width: 20,),
                                Expanded(
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: Container(
                                              height: 10,
                                              decoration: BoxDecoration(
                                                  color: ColorStyle.secondaryColor,
                                                  borderRadius: EffectStyle.borderRadiusAuth(10)
                                              ),
                                            )),
                                        TextField(
                                          textAlign: TextAlign.center,
                                          maxLength: 1,
                                          // autofocus: true,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                              fontSize: 30
                                          ),
                                          decoration: InputDecoration(
                                            counter: Offstage(),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                SizedBox(width: 20,),
                                Expanded(
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: Container(
                                              height: 10,
                                              decoration: BoxDecoration(
                                                  color: ColorStyle.secondaryColor,
                                                  borderRadius: EffectStyle.borderRadiusAuth(10)
                                              ),
                                            )),
                                        TextField(
                                          textAlign: TextAlign.center,
                                          maxLength: 1,
                                          // autofocus: true,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                              fontSize: 30
                                          ),
                                          decoration: InputDecoration(
                                            counter: Offstage(),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                                SizedBox(width: 20,),
                                Expanded(
                                    child: Stack(
                                      children: [
                                        Center(
                                            child: Container(
                                              height: 10,
                                              decoration: BoxDecoration(
                                                  color: ColorStyle.secondaryColor,
                                                  borderRadius: EffectStyle.borderRadiusAuth(10)
                                              ),
                                            )),
                                        TextField(
                                          textAlign: TextAlign.center,
                                          maxLength: 1,
                                          // autofocus: true,
                                          keyboardType: TextInputType.number,
                                          style: TextStyle(
                                              fontSize: 30
                                          ),
                                          decoration: InputDecoration(
                                            counter: Offstage(),
                                            border: InputBorder.none,
                                          ),
                                        ),
                                      ],
                                    )
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 14,
                          ),
                          InkWell(
                            child:
                            ComponentsAuthSubmit.submitAuth('Aunthenticate'),
                            onTap: () {
                              Get.to(VerificationCode());
                            },
                          ),
                        ],
                      ),
                    ),
                    ComponentsAuthBottom.authBottom('Resend the code', '', Container())
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}


// class VerificationCode extends StatelessWidget {
//   VerificationCode({Key? key}) : super(key: key);
//
//   AppBar appBar = AppBar(
//     backgroundColor: Colors.transparent,
//     elevation: 0,
//   );
//
//
//   @override
//   Widget build(BuildContext context) {
//     // var appHeight = Scaffold.of(context).appBarMaxHeight;
//     MediaQuery.of(context).padding.top + kToolbarHeight;
//
//     return Scaffold(
//       backgroundColor: ColorStyle.bgColor,
//       appBar: this.appBar,
//       body: ListView(
//         shrinkWrap: true,
//         children: [
//           Image.asset(
//             'assets/images/Layer.png',
//             width: 53,
//             height: 80,
//           ),
//           SizedBox(height: 50,),
//           Container(
//             decoration: EffectStyle.curveAuth(Colors.white),
//             width: double.infinity,
//             // padding: EffectStyle().paddingAuthWhite(),
//             // height: MediaQuery.of(context).padding.top + kToolbarHeight,
//             height: MediaQuery.of(context).size.height - (MediaQuery.of(context).padding.top + kToolbarHeight),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Container(
//                   padding: EffectStyle.paddingAuthWhite(),
//                   child: Column(
//                     children: [
//                       Text("Enter Verification Code",
//                           style: TextStyles.heading1),
//                       SizedBox(
//                         height: 40,
//                       ),
//                       Container(
//                         width: double.infinity,
//                         // decoration: ,
//                         child: Text("4-DIGIT CODE",
//                             style: TextStyles.button.apply(
//                                 color: ColorStyle.titleColor,
//                                 fontSizeDelta: 0.1)),
//                       ),
//                       SizedBox(
//                         height: 6,
//                       ),
//                       Container(
//                         height: SizeStyle.sizeAuthBox,
//                         width: MediaQuery.of(context).size.width,
//                         padding: EdgeInsets.only(
//                           left: 24,
//                           right: 24,
//                         ),
//                         decoration: BoxDecoration(
//                             color: ColorStyle.primaryColor,
//                             borderRadius: EffectStyle.borderRadiusAuth(SizeStyle.radius),
//                             border: EffectStyle.borderAllAuth(ColorStyle.borderColorTF)
//                         ),
//                         child: Row(
//                           children: [
//                             Expanded(
//                                 child: Stack(
//                                   children: [
//                                     Center(
//                                         child: Container(
//                                           height: 10,
//                                           decoration: BoxDecoration(
//                                               color: ColorStyle.secondaryColor,
//                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//                                           ),
//                                         )),
//                                     TextField(
//                                       textAlign: TextAlign.center,
//                                       maxLength: 1,
//                                       // autofocus: true,
//                                       keyboardType: TextInputType.number,
//                                       style: TextStyle(
//                                           fontSize: 30
//                                       ),
//                                       decoration: InputDecoration(
//                                         counter: Offstage(),
//                                         border: InputBorder.none,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                             ),
//                             SizedBox(width: 20,),
//                             Expanded(
//                                 child: Stack(
//                                   children: [
//                                     Center(
//                                         child: Container(
//                                           height: 10,
//                                           decoration: BoxDecoration(
//                                               color: ColorStyle.secondaryColor,
//                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//                                           ),
//                                         )),
//                                     TextField(
//                                       textAlign: TextAlign.center,
//                                       maxLength: 1,
//                                       // autofocus: true,
//                                       keyboardType: TextInputType.number,
//                                       style: TextStyle(
//                                           fontSize: 30
//                                       ),
//                                       decoration: InputDecoration(
//                                         counter: Offstage(),
//                                         border: InputBorder.none,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                             ),
//                             SizedBox(width: 20,),
//                             Expanded(
//                                 child: Stack(
//                                   children: [
//                                     Center(
//                                         child: Container(
//                                           height: 10,
//                                           decoration: BoxDecoration(
//                                               color: ColorStyle.secondaryColor,
//                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//                                           ),
//                                         )),
//                                     TextField(
//                                       textAlign: TextAlign.center,
//                                       maxLength: 1,
//                                       // autofocus: true,
//                                       keyboardType: TextInputType.number,
//                                       style: TextStyle(
//                                           fontSize: 30
//                                       ),
//                                       decoration: InputDecoration(
//                                         counter: Offstage(),
//                                         border: InputBorder.none,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                             ),
//                             SizedBox(width: 20,),
//                             Expanded(
//                                 child: Stack(
//                                   children: [
//                                     Center(
//                                         child: Container(
//                                           height: 10,
//                                           decoration: BoxDecoration(
//                                               color: ColorStyle.secondaryColor,
//                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//                                           ),
//                                         )),
//                                     TextField(
//                                       textAlign: TextAlign.center,
//                                       maxLength: 1,
//                                       // autofocus: true,
//                                       keyboardType: TextInputType.number,
//                                       style: TextStyle(
//                                           fontSize: 30
//                                       ),
//                                       decoration: InputDecoration(
//                                         counter: Offstage(),
//                                         border: InputBorder.none,
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 14,
//                       ),
//                       InkWell(
//                         child:
//                         ComponentsAuthSubmit.submitAuth('Aunthenticate'),
//                         onTap: () {
//                           Get.to(VerificationCode());
//                         },
//                       ),
//                     ],
//                   ),
//                 ),
//                 ComponentsAuthBottom.authBottom('Resend the code', '', Container())
//               ],
//             ),
//           ),
//         ],
//       )
//
//
//       // SingleChildScrollView(
//       //   physics: NeverScrollableScrollPhysics(),
//       //   child: Container(
//       //     height: MediaQuery.of(context).size.height,
//       //     child: Column(
//       //       children: [
//       //         Container(
//       //           width: MediaQuery.of(context).size.width,
//       //           alignment: Alignment.center,
//       //           child: Image.asset(
//       //             'assets/images/Layer.png',
//       //             width: 53,
//       //             height: 80,
//       //           ),
//       //         ),
//       //         SizedBox(height: 50,),
//       //         Expanded(
//       //           child: Container(
//       //             decoration: EffectStyle.curveAuth(Colors.white),
//       //             width: double.infinity,
//       //             // padding: EffectStyle().paddingAuthWhite(),
//       //             child: Column(
//       //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       //               children: [
//       //                 Container(
//       //                   padding: EffectStyle.paddingAuthWhite(),
//       //                   child: Column(
//       //                     children: [
//       //                       Text("Enter Verification Code",
//       //                           style: TextStyles.heading1),
//       //                       SizedBox(
//       //                         height: 40,
//       //                       ),
//       //                       Container(
//       //                         width: double.infinity,
//       //                         // decoration: ,
//       //                         child: Text("4-DIGIT CODE",
//       //                             style: TextStyles.button.apply(
//       //                                 color: ColorStyle.titleColor,
//       //                                 fontSizeDelta: 0.1)),
//       //                       ),
//       //                       SizedBox(
//       //                         height: 6,
//       //                       ),
//       //                       Container(
//       //                         height: SizeStyle.sizeAuthBox,
//       //                         width: MediaQuery.of(context).size.width,
//       //                         padding: EdgeInsets.only(
//       //                           left: 24,
//       //                           right: 24,
//       //                         ),
//       //                         decoration: BoxDecoration(
//       //                             color: ColorStyle.primaryColor,
//       //                             borderRadius: EffectStyle.borderRadiusAuth(SizeStyle.radius),
//       //                             border: EffectStyle.borderAllAuth(ColorStyle.borderColorTF)
//       //                         ),
//       //                         child: Row(
//       //                           children: [
//       //                             Expanded(
//       //                                 child: Stack(
//       //                                   children: [
//       //                                     Center(
//       //                                         child: Container(
//       //                                           height: 10,
//       //                                           decoration: BoxDecoration(
//       //                                               color: ColorStyle.secondaryColor,
//       //                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//       //                                           ),
//       //                                         )),
//       //                                     TextField(
//       //                                       textAlign: TextAlign.center,
//       //                                       maxLength: 1,
//       //                                       // autofocus: true,
//       //                                       keyboardType: TextInputType.number,
//       //                                       style: TextStyle(
//       //                                           fontSize: 30
//       //                                       ),
//       //                                       decoration: InputDecoration(
//       //                                         counter: Offstage(),
//       //                                         border: InputBorder.none,
//       //                                       ),
//       //                                     ),
//       //                                   ],
//       //                                 )
//       //                             ),
//       //                             SizedBox(width: 20,),
//       //                             Expanded(
//       //                                 child: Stack(
//       //                                   children: [
//       //                                     Center(
//       //                                         child: Container(
//       //                                           height: 10,
//       //                                           decoration: BoxDecoration(
//       //                                               color: ColorStyle.secondaryColor,
//       //                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//       //                                           ),
//       //                                         )),
//       //                                     TextField(
//       //                                       textAlign: TextAlign.center,
//       //                                       maxLength: 1,
//       //                                       // autofocus: true,
//       //                                       keyboardType: TextInputType.number,
//       //                                       style: TextStyle(
//       //                                           fontSize: 30
//       //                                       ),
//       //                                       decoration: InputDecoration(
//       //                                         counter: Offstage(),
//       //                                         border: InputBorder.none,
//       //                                       ),
//       //                                     ),
//       //                                   ],
//       //                                 )
//       //                             ),
//       //                             SizedBox(width: 20,),
//       //                             Expanded(
//       //                                 child: Stack(
//       //                                   children: [
//       //                                     Center(
//       //                                         child: Container(
//       //                                           height: 10,
//       //                                           decoration: BoxDecoration(
//       //                                               color: ColorStyle.secondaryColor,
//       //                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//       //                                           ),
//       //                                         )),
//       //                                     TextField(
//       //                                       textAlign: TextAlign.center,
//       //                                       maxLength: 1,
//       //                                       // autofocus: true,
//       //                                       keyboardType: TextInputType.number,
//       //                                       style: TextStyle(
//       //                                           fontSize: 30
//       //                                       ),
//       //                                       decoration: InputDecoration(
//       //                                         counter: Offstage(),
//       //                                         border: InputBorder.none,
//       //                                       ),
//       //                                     ),
//       //                                   ],
//       //                                 )
//       //                             ),
//       //                             SizedBox(width: 20,),
//       //                             Expanded(
//       //                                 child: Stack(
//       //                                   children: [
//       //                                     Center(
//       //                                         child: Container(
//       //                                           height: 10,
//       //                                           decoration: BoxDecoration(
//       //                                               color: ColorStyle.secondaryColor,
//       //                                               borderRadius: EffectStyle.borderRadiusAuth(10)
//       //                                           ),
//       //                                         )),
//       //                                     TextField(
//       //                                       textAlign: TextAlign.center,
//       //                                       maxLength: 1,
//       //                                       // autofocus: true,
//       //                                       keyboardType: TextInputType.number,
//       //                                       style: TextStyle(
//       //                                           fontSize: 30
//       //                                       ),
//       //                                       decoration: InputDecoration(
//       //                                         counter: Offstage(),
//       //                                         border: InputBorder.none,
//       //                                       ),
//       //                                     ),
//       //                                   ],
//       //                                 )
//       //                             ),
//       //                           ],
//       //                         ),
//       //                       ),
//       //                       SizedBox(
//       //                         height: 14,
//       //                       ),
//       //                       InkWell(
//       //                         child:
//       //                         ComponentsAuthSubmit.submitAuth('Aunthenticate'),
//       //                         onTap: () {
//       //                           Get.to(VerificationCode());
//       //                         },
//       //                       ),
//       //                     ],
//       //                   ),
//       //                 ),
//       //                 ComponentsAuthBottom.authBottom('Resend the code', '', Container())
//       //               ],
//       //             ),
//       //           ),
//       //         ),
//       //       ],
//       //     ),
//       //   ),
//       // ),
//     );
//   }
// }
