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
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: ColorStyle.borderColorTF1,
      key: _scaffoldKey,
      drawer: DrawerStyle(),
      appBar: AppBarStyle1(
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      body: Container(
          margin: EdgeInsets.only(left: 8, right: 8, top: 12, bottom: 12),
          padding: EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 40
          ),
          // height: 695,
          width: double.infinity,
          child: SingleChildScrollView(
            // padding: EdgeInsets.only(
            //
            //     // bottom: 20
            // ),
            child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                      ),
                      Text(
                        'Shopping Basket',
                        style: TextStyle(
                          color: ColorStyle.borderColorTF,
                          fontSize: 22,
                          fontFamily: 'GEDinarOne',
                        ),
                      ),
                      InkWell(
                        child: Container(
                          width: 36,
                          height: 36,
                          decoration: BoxDecoration(
                              color: ColorStyle.bgColor,
                              borderRadius: BorderRadius.circular(8)),
                          child: Icon(
                            Icons.clear,
                            size: 30,
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  Container(
                    height: 400,
                    // color: ColorStyle.borderColorTF,
                    child: ListView.builder(
                        padding: EdgeInsets.only(top: 20),
                        itemCount: 4,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              SizedBox(
                                height: 16,
                              ),
                              Row(
                                children: [
                                  Container(
                                    height: 25,
                                    width: 25,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        color: ColorStyle.bgColor,
                                        borderRadius: BorderRadius.circular(5)
                                    ),
                                    child: Text(
                                      index.toString(),
                                      style: TextStyle(
                                        color: ColorStyle.borderColorTF,
                                        fontSize: 20,
                                        fontFamily: 'GEDinarOne',
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    ImageStyle.Layer5,
                                    width: 55,
                                    height: 55,
                                  ),
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
                                      SizedBox(
                                        height: 8,
                                      ),
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
                                      SizedBox(
                                        height: 8,
                                      ),
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
                                  InkWell(
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: BoxDecoration(
                                          color: ColorStyle.bgColor,
                                          borderRadius: BorderRadius.circular(34)),
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                  SizedBox(width: 4),
                                  InkWell(
                                    child: Container(
                                      width: 34,
                                      height: 34,
                                      decoration: BoxDecoration(
                                          color: ColorStyle.bgColor,
                                          borderRadius: BorderRadius.circular(34)),
                                      child: Icon(
                                        Icons.delete,
                                        size: 20,
                                      ),
                                    ),
                                    onTap: () {},
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 16,
                              ),
                              Container(
                                // margin: EdgeInsets.only(left: 10, right: 10),
                                height: 1,

                                decoration: BoxDecoration(
                                    color: ColorStyle.borderColorTF,
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                            ],
                          );
                          ;
                        }),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      'Total 40\$',
                      style: TextStyle(
                        color: ColorStyle.borderColorTF,
                        fontSize: 20,
                        fontFamily: 'GEDinarOne',
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorStyle.bgColor,
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black54,
                      //     blurRadius: 2.0,
                      //   ),
                      // ],
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Container(
                    alignment: Alignment.center,
                    // color: ColorStyle.bgColor,
                    height: 50,
                    width: double.infinity,
                    child: Text(
                      'Checkout',
                      style: TextStyle(
                        color: ColorStyle.borderColorTF,
                        fontSize: 20,
                        fontFamily: 'GEDinarOne',
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: ColorStyle.bgColor,
                      borderRadius: BorderRadius.circular(10),
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black54,
                      //     blurRadius: 2.0,
                      //   ),
                      // ],
                    ),
                  )
                ]),
          ),
          decoration: BoxDecoration(
            color: ColorStyle.primaryColor,
            borderRadius: BorderRadius.circular(10),
          )),
    );
  }
}
