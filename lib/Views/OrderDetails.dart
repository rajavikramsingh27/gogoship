import 'package:flutter/material.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';


class OrderDetails extends StatelessWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: ColorStyle.borderColorTF1,
      // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

      key: _scaffoldKey,
      drawer: DrawerStyle(),
      appBar: AppBarStyle(
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
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
                  style: TextStyles.textSize_22.apply(
                    color: Colors.black,
                    fontSizeFactor: 0.8,
                  ),
                  // style: TextStyle(
                  //     color: ColorStyle.borderColorTF,
                  //     fontSize: 18,
                  // ),
                ),
              ],
            ),
            decoration: BoxDecoration(
              color: ColorStyle.bgColor,
                  borderRadius: BorderRadius.circular(10)
            ),
          ),
          Expanded(
            child:  ListView.builder(
                padding: EdgeInsets.only(left: 10,right: 10,top: 30,bottom: 30),
                shrinkWrap: true,
                itemCount: 4,
                // scrollDirection: Axis.horizontal,
                // physics: BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(left: 10,right: 10, top: 16, bottom: 16),
                    margin: EdgeInsets.only(bottom: 20),
                    // height: 325,
                    // width: 370,
                    child: Column(

                      children: [
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text(
                              'Order ID: ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                            ),
                            Text(

                              'FS-552148 ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                            ),
                            Spacer(),
                            Text(
                              'Country:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(
                              'Turkey ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),


                            ),
                            SizedBox(width: 8,),
                            Image.asset(
                              ImageStyle.Layer2,
                              width: 38,
                              height: 38,
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Text(

                              'Ordered From:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),

                            ),
                            Text(

                              'Trendyol.com ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),


                            ),

                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Text(

                              'Date & Time:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              ' 22/11/2021 - 4:20 PM',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),

                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(
                          children: [

                            Text(

                              'Product Link:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              'trendyol.com/... ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            SizedBox(width: 28,),
                            Image.asset(
                              ImageStyle.Layer3,
                              width: 24,
                              height: 24,
                            ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            Text(

                              'Quantity: ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              '1 ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            SizedBox(width: 70,),
                            Text(

                              'Color:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              'Red ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            SizedBox(width: 20,),
                            Text(

                              'Size:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              'L ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),


                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            Text(

                              'Total: ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              '27:30\$ ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            SizedBox(width: 40,),
                            Text(

                              'Cost:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              '24.30\$ ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),

                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            SizedBox(width: 20,),
                            Text(

                              'Fees:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              '3.00\$',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),


                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            Text(

                              'Coupon Code: ',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              'No',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            SizedBox(width: 40,),
                            Text(

                              'Insurance:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            Text(

                              'No',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.primaryColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.primaryColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),



                          ],
                        ),
                        SizedBox(height: 15,),
                        Row(

                          children: [
                            Text(

                              'Status:',
                              style: TextStyles.textSize_16.apply(
                                color: ColorStyle.bgColor,
                                fontSizeFactor: 0.8,
                              ),
                              // style: TextStyle(
                              //     color: ColorStyle.bgColor,
                              //     fontSize: 15,
                              //   fontFamily: 'GEDinarOne',
                              //
                              // ),
                            ),
                            InkWell(
                              child: Container(
                                alignment: Alignment.center,
                                width: 76,
                                height: 24,
                                child:  Text(
                                  'Cancelled',
                                  style: TextStyles.textSize_16.apply(
                                    color: ColorStyle.redColor,
                                    fontSizeFactor: 0.8,
                                  ),
                                  // style: TextStyle(
                                  //     color: Colors.red,
                                  //     fontSize: 15,
                                  //   fontFamily: 'GEDinarOne',
                                  //
                                  // ),
                                ),
                                decoration: BoxDecoration(
                                    color: ColorStyle.primaryColor,
                                    borderRadius: BorderRadius.circular(12)
                                ),

                              ),
                              onTap: (){},
                            )



                          ],
                        ),

                      ],
                    ),
                    decoration: EffectStyle.shadowOrders()
                  );

                }),
          )

        ],
      ),
    );
  }
}
