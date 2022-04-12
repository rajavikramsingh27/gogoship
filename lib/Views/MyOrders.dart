import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Controllers/MyOrderController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Views/MyOrdersDetails.dart';
import '../Components/TextFields.dart';
import '../Components/DropDownCustom.dart';

class MyOrders extends StatelessWidget {
  const MyOrders({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyOrderController());

    return Scaffold(
      backgroundColor: ColorStyle.borderColorTF1,
      appBar: AppBarStyle(
        iconLeading: Icons.arrow_back,
        onTap: () {
          Get.back();
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
                            style: TextStyles.textSize_18.apply(
                              color: ColorStyle.borderColorTF,
                            )

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
                          style: TextStyles.textSize_20.apply(
                            color: ColorStyle.primaryColor,
                          )

                        ),
                        SizedBox(
                          width: 7,
                        ),
                        Container(
                            padding: EdgeInsets.only(left: 10, right: 0),
                            height: 36,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40),
                                border: Border.all(
                                    width: 1, color: ColorStyle.bgColor)),
                            child: DropDownCustom(
                              arrDropDown: controller.arrDropDown,
                              selectedValue: controller.selectedValue.value,
                              onTap: (text) {
                                controller.selectedValue.value = text!;
                              },
                            ))
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
                          padding: EdgeInsets.only(
                              left: 10, right: 10, top: 30, bottom: 30),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            ImageStyle.Layer2,
                                            width: 38,
                                            height: 38,
                                          ),
                                          SizedBox(
                                            width: 4,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'FS-552148 ',
                                            style: TextStyles.textSize_12.apply(
                                              color: ColorStyle.primaryColor,
                                            )
                                                // style: TextStyle(
                                                //   color:
                                                //       ColorStyle.primaryColor,
                                                //   fontSize: 12,
                                                //   fontFamily: 'GEDinarOne',
                                                // ),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                                      style: TextStyles.textSize_12.apply(
                                                        color: ColorStyle.primaryColor,
                                                      )
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                      Expanded(
                                          child: Container(
                                          alignment: Alignment.center,
                                          padding: EdgeInsets.only(
                                              left: 10,
                                              right: 10,
                                              top: 4,
                                              bottom: 4),
                                          child: Text(
                                              controller.listOrder[index],
                                              style: TextStyle(
                                                color: ColorStyle.primaryColor,
                                                fontSize: 9,
                                                // fontFamily: 'GEDinarOne',
                                              )),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(16),
                                              border: Border.all(
                                                  width: 2, color: Colors.red))))
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
          }),
    );
  }
}
