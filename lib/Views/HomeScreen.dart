import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:get/get.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Controllers/DrawerStyleController.dart';
import 'package:gogoship/Controllers/HomeScreenController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Views/ProductDetails.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());

    final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

    return Scaffold(
        backgroundColor: ColorStyle.fromHex("#022C43"),
        // backgroundColor: Colors.red,
        key: _scaffoldKey,
        drawer: DrawerStyle(),
        appBar: AppBarStyle(
          iconLeading: Icons.menu,
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        body:  GetBuilder<HomeScreenController>(
          init: HomeScreenController(),
          initState: (state) {
            controller.reset();
            // print(controller.listSelected.value);
          },
          builder: (authController) {
            return Obx(() => SingleChildScrollView(
                  padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Quick Search',
                          style: TextStyle(
                            color: ColorStyle.bgColor,
                            fontSize: 22,
                            fontFamily: 'GEDinarOne',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: TextFieldsWhiteRound(
                              hintText: "Search by order number",
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            child: Image.asset(
                              ImageStyle.filter,
                              width: 60,
                              height: 60,
                            ),
                            onTap: () {
                              filter();
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      // Text(controller.hello.value),
                      ListView.separated(
                        itemCount: controller.listCount.value,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.only(
                            // top: 16,
                            bottom: 20),
                        separatorBuilder: (context, i) {
                          return SizedBox(
                            height: 16,
                          );
                        },
                        itemBuilder: (context, i) {
                          return Container(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 16, bottom: 16),
                            decoration: BoxDecoration(
                              color: ColorStyle.fromHex("#053F5E"),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Turkey",
                                  style: TextStyles.textSize_22
                                      .apply(color: ColorStyle.bgColor),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                GridView.builder(
                                    itemCount: controller.images.length,
                                    shrinkWrap: true,
                                    physics: NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 2,
                                            crossAxisSpacing: 10,
                                            mainAxisSpacing: 10,
                                            mainAxisExtent: 62,
                                        ),
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return InkWell(
                                        child: Container(
                                          child: Image.asset(
                                            controller.images[index],
                                          ),
                                          decoration: BoxDecoration(
                                              color: ColorStyle.primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black54,
                                                  blurRadius: 2.0,
                                                ),
                                              ]),
                                        ),
                                        onTap: () {
                                          Get.to(ProductDetails());
                                        },
                                      );
                                    }),
                              ],
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ));
          },
        )
    );
  }
}

filter() {
  final controller = Get.put(HomeScreenController());

  return Get.dialog(
      Material(
      color: Colors.transparent,
      child: Obx(() => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, right: 18),
                height: 432,
                width: MediaQuery.of(Get.context!).size.width,
                decoration: BoxDecoration(
                  color: ColorStyle.primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Container(
                            margin: EdgeInsets.only(right: 20),
                            width: 31,
                            height: 31,
                            child: Icon(Icons.clear),
                            decoration: BoxDecoration(
                                color: ColorStyle.bgColor,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  new BoxShadow(
                                    color: Colors.black12..withOpacity(0.16),
                                    blurRadius: 50.0,
                                  ),
                                ]),
                          ),
                          onTap: () {
                            Get.back();
                          },
                        )
                      ],
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(top: 20),
                        // shrinkWrap: true,
                        itemCount: controller.chooseFashationSelected.length,
                        physics: BouncingScrollPhysics(),
                        itemBuilder: (BuildContext context, int index) {
                          return Column(
                            children: [
                              InkWell(
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 45,
                                  width: 349,
                                  margin: EdgeInsets.only(
                                      left: 16, right: 16, bottom: 10),
                                  child: Text(
                                    // 'Logo',
                                    controller.chooseFashation[index],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontFamily: 'GEDinarOne',
                                    ),
                                  ),
                                  decoration:
                                      controller.chooseFashationSelected[index]
                                          ? BoxDecoration(
                                              color: ColorStyle.bgColor,
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              boxShadow: [
                                                  new BoxShadow(
                                                    color: Colors.black12
                                                      ..withOpacity(0.5),
                                                    blurRadius: 100.0,
                                                  ),
                                                ])
                                          : BoxDecoration(),
                                ),
                                onTap: () {
                                  for (int i = 0;
                                      i < controller.chooseFashation.length;
                                      i++) {
                                    if (i == index) {
                                      controller.chooseFashationSelected[i] =
                                          !controller
                                              .chooseFashationSelected[i];
                                      print(controller.chooseFashationSelected);
                                    }
                                  }
                                },
                              )
                            ],
                          );
                        }),
                  ],
                ),
              ),
            ],
          ))
      ));
}
