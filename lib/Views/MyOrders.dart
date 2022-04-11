import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Controllers/MyOrderController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Views/MyOrdersDetails.dart';
import '../Components/TextFields.dart';
import 'package:dropdown_button2/dropdown_button2.dart';


class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {



    final controller = Get.put(MyOrderController());
    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
      backgroundColor: ColorStyle.borderColorTF1,
      key: _scaffoldKey,
      drawer: DrawerStyle(),
      appBar: AppBarStyle(
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      body: GetBuilder(
          init: MyOrderController(),
          initState: (state) {
            // controller.reset();
          },
          builder: (authController) {
            return Obx(() => Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  height: 75,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.wallet_travel_sharp,
                        size: 38,
                      ),
                      Text(
                        'Order Details ',
                        style: TextStyle(
                          color: ColorStyle.borderColorTF,
                          fontSize: 18,
                          fontFamily: 'GEDinarOne',
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: ColorStyle.bgColor,
                      borderRadius: BorderRadius.circular(10)),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: TextFieldsWhiteRound(
                    hintText: 'Search by order number',
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: ColorStyle.secondaryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      'Sort By ',
                      style: TextStyle(
                        color: ColorStyle.primaryColor,
                        fontSize: 20,
                        fontFamily: 'GEDinarOne',
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      // width: 100,
                      // height: 30,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'Select Items',
                              style: TextStyle(
                                color: ColorStyle.primaryColor,
                                fontSize: 12,
                                // color: Theme
                                //     .of(context)
                                //     .hintColor,
                              ),
                            ),
                            items: controller.items
                                .map((item) =>
                                DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                                .toList(),
                            value: controller.selectedValue,
                            onChanged: (value) {
                              controller.selectedValue = value as String;

                            },
                            buttonHeight: 35,
                            buttonWidth: 91,
                            itemHeight: 40,
                          ),
                        ),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            border: Border.all(width: 1, color: ColorStyle.bgColor)))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: ColorStyle.secondaryColor,
                ),
                Expanded(
                  child: ListView.builder(
                      padding:
                      EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
                      shrinkWrap: true,
                      itemCount: controller.listOrder.length,
                      // scrollDirection: Axis.horizontal,
                      // physics: BouncingScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        return InkWell(
                          child: Container(
                              padding: EdgeInsets.only(
                                  left: 5, right: 5, top: 16, bottom: 16),
                              margin: EdgeInsets.only(bottom: 16),
                              // height: 325,
                              // width: 370,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        ImageStyle.Layer2,
                                        width: 38,
                                        height: 38,
                                      ),
                                      SizedBox(
                                        width: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'FS-552148 ',
                                            style: TextStyle(
                                              color: ColorStyle.primaryColor,
                                              fontSize: 12,
                                              fontFamily: 'GEDinarOne',
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                '15.23S - Trendyol',
                                                style: TextStyle(
                                                  color: ColorStyle.bgColor,
                                                  fontSize: 12,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                '15/11/2021 - 4:20 PM',
                                                style: TextStyle(
                                                  color: ColorStyle.primaryColor,
                                                  fontSize: 12,
                                                  fontFamily: 'GEDinarOne',
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ],
                                  ),

                                  Container(
                                      alignment: Alignment.center,
                                      padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
                                      child: Text(controller.listOrder[index],
                                          style: TextStyle(
                                            color: ColorStyle.primaryColor,
                                            fontSize: 12,
                                            fontFamily: 'GEDinarOne',
                                          )),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(16),
                                          border: Border.all(
                                              width: 2, color: Colors.red)))
                                ],
                              ),
                              decoration: EffectStyle.shadowOrders()),
                          onTap: () {
                            Get.to(MyOrdersDetails());
                          },
                        );
                      }),
                ),
              ],
            ));
          }
      ) ,

    );
  }
}
