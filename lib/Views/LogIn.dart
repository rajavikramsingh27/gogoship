import 'package:flutter/material.dart';
import 'package:gogoship/Utils/Global.dart';


class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

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
                      padding: EdgeInsets.only(left: 25,right: 25),
                      child:  Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 20),
                            child: Text(
                              'Log In to your Account.',
                              style: TextStyle(
                                fontFamily: 'SFPRODISPLAYHEAVYITALIC',
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                            height: 45,
                            // width: 280,

                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            'EMAIL OR PHONE NUMBER',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                // fontWeight: FontWeight.w600
                            ),

                          ),
                          SizedBox(height: 10,),
                          Container(
                            // alignment: Alignment.center,
                            padding: EdgeInsets.only(left: 20),
                            child: TextField(
                              keyboardType: TextInputType.emailAddress,

                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: 'johnsondoe@nomail.com',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                    color: Colors.black26
                                ),
                              ),


                            ),
                            height: 50,
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
                          Text(
                            'Password',
                            style: TextStyle(
                                color: Colors.black54,
                                fontSize: 15,
                                fontWeight: FontWeight.w600
                            ),

                          ),
                          SizedBox(height: 10,),
                          Container(
                            alignment: Alignment.centerLeft,
                            padding: EdgeInsets.only(left: 20),
                            child: TextField(
                              obscureText: true,
                              decoration: new InputDecoration(
                                border: InputBorder.none,
                                hintText: '***************',
                                hintStyle: TextStyle(
                                    fontSize: 16,
                                    // fontWeight: FontWeight.bold,
                                    fontFamily: 'Raleway',
                                    color: Colors.black26
                                ),
                              ),


                            ),
                            height: 50,
                            // width: 280,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                color: HexColor('#013088'),

                              ),

                            ),
                          ),
                          SizedBox(height: 50,),
                          InkWell(
                            child: Container(
                              // alignment: Alignment.center,
                              padding: EdgeInsets.only(left: 20),
                              child:  Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(width: 40,),
                                  Text(
                                    'PROCEED',
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
                              height: 50,
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
                              // Get.to(VerificationCode());
                            },
                          ),
                          SizedBox(height: 9,),
                          Container(
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  child:  Container(
                                    alignment: Alignment.center,
                                    child:  Image.asset(
                                      'assets/images/google.png',
                                      height: 18,
                                      width: 18,

                                    ),
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 2,
                                          // offset: Offset(4, 8), // Shadow position
                                        ),
                                      ],
                                      // border: Border.all(
                                      //     // color: Colors.black26
                                      //
                                      // ),

                                    ),
                                  ),
                                  onTap: (){},
                                ),
                                SizedBox(width: 20,),
                                InkWell(
                                  child:  Container(
                                    alignment: Alignment.center,
                                    // padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.facebook,
                                      color: Colors.blue,
                                    ),
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 2,
                                          // offset: Offset(4, 8), // Shadow position
                                        ),
                                      ],
                                      // border: Border.all(
                                      //     // color: Colors.black26
                                      //
                                      // ),

                                    ),
                                  ),
                                  onTap: (){},
                                ),
                                SizedBox(width: 20,),
                                InkWell(
                                  child:  Container(
                                    alignment: Alignment.center,
                                    // padding: EdgeInsets.only(left: 20),
                                    child: Icon(
                                      Icons.apple,
                                      color: Colors.black,
                                    ),
                                    height: 64,
                                    width: 64,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(40),
                                      color: Colors.white,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black12,
                                          blurRadius: 2,
                                          // offset: Offset(4, 8), // Shadow position
                                        ),
                                      ],
                                      // border: Border.all(
                                      //     // color: Colors.black26
                                      //
                                      // ),

                                    ),
                                  ),
                                  onTap: (){},
                                ),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 34,),
                    Container(
                      child: Column(
                        children: [
                          SizedBox(height: 40,),
                          Container(
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.arrow_drop_up,
                              // color: Colors.blue,
                            ),
                            height: 23,
                            width: 23,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 2,
                                  // offset: Offset(4, 8), // Shadow position
                                ),
                              ],
                              // border: Border.all(
                              //     // color: Colors.black26
                              //
                              // ),

                            ),
                          ),
                          SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Existing User?',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600
                                ),

                              ),
                              Text(
                                ' Swipe Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),

                              ),
                            ],
                          ),
                        ],
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
