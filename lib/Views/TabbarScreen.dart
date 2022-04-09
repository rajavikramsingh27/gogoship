import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/TabbarScreenController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Views/HomeScreen.dart';
import 'package:gogoship/Views/NewOrder.dart';
import 'package:gogoship/Views/MyAccount.dart';
import 'package:gogoship/Views/BottomNavigationBarView.dart';

class TabbarScreen extends StatelessWidget {

  final int? indexSelected;

  TabbarScreen({Key? key, this.indexSelected = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(TabbarScreenController());

    return Scaffold(
      backgroundColor: ColorStyle.fromHex("#022C43"),
      body: GetBuilder(
        init: TabbarScreenController(),
        initState: (state) {
          controller.index.value = indexSelected!;
        },
        builder: (authController) {

          return Obx(
            () => Stack(
              children: [
                if (controller.index.value == 0) Positioned(
                    bottom: 50,
                    right: 0,
                    left: 0,
                    top: 0,
                    child: HomeScreen()
                ),
                if (controller.index.value == 1) Positioned(
                    bottom: 50,
                    right: 0,
                    left: 0,
                    top: 0,
                    child: NewOrder()
                ),
                if (controller.index.value == 2) Positioned(
                    bottom: 50,
                    right: 0,
                    left: 0,
                    top: 0,
                    child: MyAccount()
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: BottomNavigationBarView(
                    onTap1: () {
                      controller.index.value = 0;
                    },
                    onTap2: () {
                      controller.index.value = 1;
                    },
                    onTap3: () {
                      controller.index.value = 2;
                    },
                  ),
                ),

                Positioned(
                  bottom: 0,
                  right: 0,
                  left: 0,
                  child: BottomNavigationBarView(
                    onTap1: () {
                      controller.index.value = 0;
                    },
                    onTap2: () {
                      controller.index.value = 1;
                    },
                    onTap3: () {
                      controller.index.value = 2;
                    },
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
