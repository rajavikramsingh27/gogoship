import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Components/AppBarTab.dart';
import 'package:gogoship/Controllers/MyOrderController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';

import '../Components/TextFields.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyOrderController());

    return Scaffold(
      backgroundColor: ColorStyle.borderColorTF1,
      appBar: AppBarStyle.appBar,
      body: Column(
        children: [
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: 75,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.wallet_travel_sharp,
                  size: 38,),
                Text(
                  'Order Details ',
                  style: TextStyle(
                      color: ColorStyle.borderColorTF,
                      fontSize: 18

                  ),
                ),
              ],
            ),
            decoration: BoxDecoration(
                color: ColorStyle.bgColor,
                borderRadius: BorderRadius.circular(10)
            ),
          ),
          SizedBox(height: 10,),
          Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            child: TextFieldsWhiteRound(
              hintText: 'Search by order number',
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: 2,
            width: double.infinity,
            color: ColorStyle.secondaryColor,

          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 12,),
              Text(

                'Sort By ',
                style: TextStyle(
                    color: ColorStyle.primaryColor,
                    fontSize: 22

                ),
              ),
              SizedBox(width: 7,),
              Container(
                width: 100,
                height: 30,
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(

                        'All ',
                        style: TextStyle(
                            color: ColorStyle.primaryColor,
                            fontSize: 15

                        ),
                      ),
                      SizedBox(width: 7,),
                      Image.asset(
                        ImageStyle.Layer4,
                        width: 20,
                        height: 20,
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                          width: 1,
                          color: ColorStyle.bgColor
                      )
                  )
              )


            ],
          ),
          SizedBox(height: 10,),
          Container(
              height: 2,
              width: double.infinity,
                   color: ColorStyle.secondaryColor,
          ),
          SizedBox(height: 13,),
          Expanded(
            child:  ListView.builder(
                padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 30),
                shrinkWrap: true,
                itemCount: controller.listOrder.length,
                // scrollDirection: Axis.horizontal,
                // physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.only(left: 5,right: 5, top: 16, bottom: 16),
                      margin: EdgeInsets.only(bottom: 16),
                      // height: 325,
                      // width: 370,
                      child:  Row(

                        children: [
                          Image.asset(
                            ImageStyle.Layer2,
                            width: 38,
                            height: 38,
                          ),
                          SizedBox(width: 8,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(

                                'FS-552148 ',
                                style: TextStyle(
                                    color: ColorStyle.primaryColor,
                                    fontSize: 12

                                ),
                              ),
                              SizedBox(height: 10,),
                              Row(
                                children: [
                                  Text(

                                    '15.23S - Trendyol',
                                    style: TextStyle(
                                        color: ColorStyle.bgColor,
                                        fontSize: 12

                                    ),
                                  ),
                                  SizedBox(width: 5,),
                                  Text(

                                    '15/11/2021 - 4:20 PM',
                                    style: TextStyle(
                                        color: ColorStyle.primaryColor,
                                        fontSize: 12

                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: 6,),
                          Container(
                              alignment: Alignment.center,
                              width: 80,
                              height: 30,
                              child:  Text(

                                controller.listOrder[index],
                                style: TextStyle(
                                    color: ColorStyle.primaryColor,
                                    fontSize: 12

                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  border: Border.all(
                                      width: 2,
                                      color: Colors.red
                                      // color: (index%2 == 0) ? Colors.green : Colors.blue,
                                  )
                              )
                          )




                        ],
                      ),
                      decoration: EffectStyle.shadowOrders()
                  );

                }),
          ),




        ],
      ),
    );
  }
}
