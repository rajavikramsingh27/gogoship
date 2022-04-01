import 'package:flutter/material.dart';
import 'package:gogoship/Utils/Global.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
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
         Stack(

           children: [
             Container(
               padding: EdgeInsets.only(left: 16,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 20),
                      child: Text(
                        'Create your Account',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                      height: 45,
                      // width: 280,

                    ),

                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Email*',
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
                      height: 66,
                      // width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black26
                        ),

                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      'Phone Number',
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
                        decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: 'johnsondoe21',
                          hintStyle: TextStyle(
                              fontSize: 16,
                              // fontWeight: FontWeight.bold,
                              fontFamily: 'Raleway',
                              color: Colors.black26
                          ),
                        ),


                      ),
                      height: 66,
                      // width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black26

                        ),

                      ),
                    ),
                    SizedBox(height: 10,),
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
                      height: 66,
                      // width: 280,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.black26

                        ),

                      ),
                    ),
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
         )
        ],
      ),
    );
  }
}
