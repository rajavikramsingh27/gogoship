import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Controllers/MyAccountPageController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(MyAccountPageController());

    return Scaffold(
        backgroundColor: ColorStyle.borderColorTF1,
        appBar: AppBarStyle(
          iconLeading: Icons.arrow_back,
          onTap: () {
            Get.back();
          },
        ),
        body: GetBuilder<MyAccountPageController>(
          init: MyAccountPageController(),
          initState: (state) {
            controller.reset();
            // print(controller.listSelected.value);
          },
          builder: (authController) {
            return Obx(() => GridView.builder(
                padding: EdgeInsets.only(top: 20, left: 16, right: 16),
                shrinkWrap: true,
                itemCount: controller.listIcons.length,
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 80,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    // child: Image.asset(controller.images[index],),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        controller.listIcons[index],
                        // SizedBox(height: 5,),
                        Text(
                          // 'Logo',
                          controller.listOrder[index],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontFamily: 'GEDinarOne',
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: ColorStyle.bgColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 2.0,
                          ),
                        ]),
                  );
                }));
          },
        ));
  }
}
