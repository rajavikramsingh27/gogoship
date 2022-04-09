import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/TabbarScreenController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Views/HomeScreen.dart';
import 'package:gogoship/Views/NewOrder.dart';
import 'package:gogoship/Views/MyAccount.dart';




class TabbarScreen extends StatelessWidget  {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabbarScreenController());

    bottomNavigationBar() {
      return Container(
        height: 90,
        // color: Colors.red,
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              child: Container(
                height: 55,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: ColorStyle.bgColor,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.home),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.black, fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      onTap: () {
                        controller.index.value = 0;
                      },
                    ),
                    InkWell(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.account_balance_wallet_rounded),
                          Text(
                            'My Wallet',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                          ),
                        ],
                      ),
                      onTap: () {
                        controller.index.value = 1;
                      },
                    )
                  ],
                ),
              ),
            ),
            Center(
              child: InkWell(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      child: Icon(
                        Icons.add,
                        color: ColorStyle.primaryColor,
                        size: 40,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: ColorStyle.borderColorTF1,
                          boxShadow: [
                            BoxShadow(
                                color: ColorStyle.secondaryColor.withOpacity(0.6),
                                offset: Offset(0, 3),
                                blurRadius: 10)
                          ]),
                    ),
                    Text(
                      'New Order',
                      style: TextStyle(color: Colors.black, fontSize: 14),
                    ),
                  ],
                ),
                onTap: () {
                  controller.index.value = 2;
                },
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: ColorStyle.primaryColor,
        body: GetBuilder(
          init: TabbarScreenController(),
          initState: (state) {
            // controller.reset();
          },
          builder: (authController) {
            return Obx(
                  () =>  Stack(
                    children: [
                      if (controller.index.value ==0)
                      Expanded(
                          child: HomeScreen()
                      ),
                      if (controller.index.value ==1)
                        Expanded(
                          child: NewOrder()
                      ),
                      if (controller.index.value ==2)
                        Expanded(
                          child: MyAccount()
                      ),

                      Positioned(bottom: 0, left: 0, right: 0, child: bottomNavigationBar())
                    ],
                  ),
            );
          },
        ),
    );
  }
}

