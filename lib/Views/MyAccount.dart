import 'package:flutter/material.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';


class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: ColorStyle.borderColorTF1,
      key: _scaffoldKey,
      drawer: DrawerStyle(),
      appBar: AppBarStyle(
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      body:   Container(
        margin: EdgeInsets.only(left: 8,right: 8,top: 12,bottom: 12),
          padding: EdgeInsets.only(left: 8,right: 8,),
        // height: 695,
        width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(

                    'Shopping Basket',
                    style: TextStyle(
                        color: ColorStyle.borderColorTF,
                        fontSize: 22,
                      fontFamily: 'GEDinarOne',

                    ),
                  ),
                  SizedBox(width: 34,),
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 31,
                    width: 31,
                    child: Icon(
                      Icons.clear,
                      size: 30,
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.bgColor,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),

                ],
              ),
             Container(
          height: 400,
          // color: ColorStyle.borderColorTF,
          child: ListView.builder(
            padding: EdgeInsets.only(top: 20),
            itemCount: 4,
            // scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),

            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  SizedBox(height: 16,),
                  Row(
                    children: [
                      // SizedBox(width: 2,),
                      Container(
                        alignment: Alignment.center,
                        // margin: EdgeInsets.only(left: 10, right: 10),
                        height: 25,
                        width: 25,
                        child: Text(

                          '1',
                          style: TextStyle(
                              color: ColorStyle.borderColorTF,
                              fontSize: 18,
                            fontFamily: 'GEDinarOne',

                          ),
                        ),
                        decoration: BoxDecoration(
                            color: ColorStyle.bgColor,
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                      SizedBox(width: 5,),
                      Image.asset(
                        ImageStyle.Layer5,
                        width: 55,
                        height: 55,
                      ),
                      // SizedBox(width: 2),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(

                            'Item 01 Name (1)',
                            style: TextStyle(
                                color: ColorStyle.borderColorTF,
                                fontSize: 14,
                              fontFamily: 'GEDinarOne',

                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(

                            'Size: L',
                            style: TextStyle(
                                color: ColorStyle.borderColorTF,
                                fontSize: 14,
                              fontFamily: 'GEDinarOne',

                            ),
                          ),
                        ],
                      ),
                      // SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(

                            '(20 S)',
                            style: TextStyle(
                                color: ColorStyle.borderColorTF,
                                fontSize: 14,
                              fontFamily: 'GEDinarOne',

                            ),
                          ),
                          SizedBox(height: 8,),
                          Text(

                            'Color: Green',
                            style: TextStyle(
                                color: ColorStyle.borderColorTF,
                                fontSize: 14,
                              fontFamily: 'GEDinarOne',

                            ),
                          ),
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.add,
                          size: 19,
                        ),
                        decoration: BoxDecoration(
                            color: ColorStyle.bgColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, right: 10),
                        height: 20,
                        width: 20,
                        child: Icon(
                          Icons.delete,
                          size: 16,
                        ),
                        decoration: BoxDecoration(
                            color: ColorStyle.bgColor,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),


                    ],
                  ),
                  SizedBox(height: 16,),
                  Container(
                    // margin: EdgeInsets.only(left: 10, right: 10),
                    height: 1,


                    decoration: BoxDecoration(
                        color: ColorStyle.borderColorTF,
                        borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ],
              );;

            }),),
              SizedBox(height: 30,),
             Container(
          alignment: Alignment.center,
          // color: ColorStyle.bgColor,
          height: 44,
          width: double.infinity,
          child: Text(

            'Total 40S',
            style: TextStyle(
                color: ColorStyle.borderColorTF,
                fontSize: 24,
              fontFamily: 'GEDinarOne',

            ),
          ),
          decoration: BoxDecoration(
              color: ColorStyle.bgColor,
              borderRadius: BorderRadius.circular(10),

              boxShadow: [BoxShadow(
                color: Colors.black54,
                blurRadius: 2.0,
              ),]
          ),
        ),
              SizedBox(height: 18,),
              Container(
                alignment: Alignment.center,
                // color: ColorStyle.bgColor,
                height: 44,
                width: double.infinity,
                child: Text(

                  'Checkout',
                  style: TextStyle(
                      color: ColorStyle.borderColorTF,
                      fontSize: 24,
                    fontFamily: 'GEDinarOne',

                  ),
                ),
                decoration: BoxDecoration(
                    color: ColorStyle.bgColor,
                    borderRadius: BorderRadius.circular(10),

                    boxShadow: [BoxShadow(
                      color: Colors.black54,
                      blurRadius: 2.0,
                    ),]
                ),
              )
            ]

          ),
          decoration: BoxDecoration(
              color: ColorStyle.primaryColor,
              borderRadius: BorderRadius.circular(10),

          )
      ),
    );
  }
}
