import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Utils/Global.dart';
import 'package:gogoship/Views/LogIn.dart';

class VerificationCode extends StatelessWidget {
  const VerificationCode({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor('#ffd700'),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height : 200,
                width: MediaQuery.of(context).size.width ,
                color: HexColor('#ffd700'),
                alignment: Alignment.center,
                child:  Image.asset(
                  'assets/images/Layer.png',
                  width: 53,
                  height: 80,

                ),
              ),
              Container(
                child: Column(

                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 20,right: 20),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Enter Verification Code',
                              style: TextStyle(
                                fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                                color: Colors.black,
                                fontSize: 26,
                              ),
                            ),
                            height: 45,
                            // width: 280,

                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '4-DIGIT CODE',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 10,
                                fontWeight: FontWeight.w600
                            ),

                          ),
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(width: 10,),
                                Container(

                                  height: 11,
                                    width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: HexColor('##115173'),

                                    // border: Border.all(
                                    //     // color: Colors.black26
                                    //
                                    // ),

                                  ),
                                ),
                                Container(

                                  height: 11,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: HexColor('##115173'),

                                    // border: Border.all(
                                    //     // color: Colors.black26
                                    //
                                    // ),

                                  ),
                                ),
                                Container(

                                  height: 11,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: HexColor('##115173'),

                                    // border: Border.all(
                                    //     // color: Colors.black26
                                    //
                                    // ),

                                  ),
                                ),
                                Container(

                                  height: 11,
                                  width: 52,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: HexColor('##115173'),

                                    // border: Border.all(
                                    //     // color: Colors.black26
                                    //
                                    // ),

                                  ),
                                ),
                                SizedBox(width: 10,),
                              ],
                            ),
                            height: 68,
                            // width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: HexColor('#013088'),

                              ),

                            ),
                          ),
                          SizedBox(height: 20,),
                          InkWell(
                            child: Container(
                              // alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 20),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 40,),
                                  Text(
                                    'Authenticate',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600
                                    ),

                                  ),
                                  Image.asset(
                                    'assets/images/send.png',
                                    height: 18,
                                    width: 18,

                                  ),
                                  SizedBox(width: 40,),
                                ],
                              ),
                              height: 60,
                              // width: 280,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: HexColor('#115173'),

                                boxShadow: [
                                  BoxShadow(
                                    color: HexColor('#115173'),
                                    blurRadius: 8,
                                    offset: Offset(1, 2), // Shadow position
                                  ),
                                ],

                              ),
                            ),
                            onTap: (){
                              Get.to(LogIn());
                            },
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 228,),
                    Container(
                      child:  Text(
                        'Resend the code',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w600
                        ),

                      ),
                      height : 132,
                      width: MediaQuery.of(context).size.width ,
                      // color: Colors.white,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(65),
                          topRight: Radius.circular(65),
                        ),

                        color: HexColor('#115173'),
                      ),
                    )
                  ],
                ),
                height : MediaQuery.of(context).size.height-200,
                width: MediaQuery.of(context).size.width ,
                // color: Colors.white,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),

                    ),

                    color: Colors.white
                ),
              )
            ],
          ),
        )
    );
  }
}
