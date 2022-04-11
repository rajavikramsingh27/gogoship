import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/DrawerStyleController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
import 'package:gogoship/Views/MyAccountPage.dart';
import 'package:gogoship/Views/MyOrders.dart';
import 'package:gogoship/Views/MyProfile.dart';
import 'package:gogoship/Views/NewOrder.dart';
import 'package:gogoship/Views/OrderDetails.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Views/AuthList.dart';


class DrawerStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DrawerStyleController());

    return Scaffold(
        backgroundColor: Colors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(AppBar().preferredSize.height-10),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: Container(),
          ),
        ),
        body: GetBuilder(
          init: DrawerStyleController(),
          initState: (state) {
            controller.reset();
          },
          builder: (authController) {
            return Obx(
                  () =>  Row(
                    children: [
                      Container(
                        width: 270,
                        color: ColorStyle.bgColor,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 296,
                              height: 168,
                              color: ColorStyle.secondaryColor,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius: BorderRadius.circular(80),
                                        border: Border.all(
                                          width: 2,
                                          color: ColorStyle.bgColor,
                                        )),
                                    child: Image.asset(
                                      ImageStyle.Layer5,
                                      width: 70,
                                      height: 70,
                                    ),
                                    width: 114,
                                    height: 114,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    'User Name',
                                    style: TextStyle(fontSize: 22, color: Colors.white,fontFamily: 'GEDinarOne',),
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                ListView.builder(
                                    shrinkWrap: true,
                                    itemCount: controller.listIcons.length,
                                    physics: BouncingScrollPhysics(),
                                    itemBuilder: (BuildContext context, int index) {
                                      return Column(
                                        children: [
                                         InkWell(
                                           child:  Row(
                                             children: [
                                               Container(
                                                 // color: Colors.red,
                                                 height: 50,
                                                 width: 50,
                                                 margin: EdgeInsets.all(2),
                                                 // color: Colors.red,
                                                 child: controller.listIcons[index],
                                               ),
                                               Text(
                                                 // 'Logo',
                                                 controller.listOrder[index],
                                                 style:
                                                 TextStyle(color: Colors.black, fontSize: 18,fontFamily: 'GEDinarOne',),
                                               ),
                                             ],
                                           ),
                                           onTap: (){
                                             Get.back();

                                             controller.intAppBar.value = index;
                                             if (controller.intAppBar.value == 0)
                                               Get.to( MyProfile());
                                             else if (controller.intAppBar == 1)
                                               Get.to( MyOrders());
                                             else  if (controller.intAppBar == 2)
                                               Get.to( OrderDetails());
                                             else  if (controller.intAppBar == 3)
                                               Get.to( MyAccountPage());
                                             // else  if (controller.intAppBar == 4)
                                             //   Get.to( NewOrder());
                                           //   else  if (controller.intAppBar == 5)
                                           //     Get.to( TicketsAndDocuments());
                                           }
                                         ),
                                          Container(
                                            height: 2,
                                            width: 296,
                                            color: ColorStyle.secondaryColor,
                                          )
                                        ],
                                      );
                                    }),
                                SizedBox(
                                  height: 15,
                                ),

                              ],
                            ),
                            SizedBox(
                              height: 80,
                            ),
                            InkWell(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 14,
                                  ),
                                  Image.asset(
                                    'assets/images/logout.png',
                                    width: 32,
                                    height: 32,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Log out',
                                    style: TextStyles.textSize_31.apply(
                                      color: Colors.black,
                                      fontSizeFactor: 0.8,
                                    ),

                                    // TextStyle(
                                    //   fontSize: 28,
                                    //   color: ColorStyle.secondaryColor,
                                    // ),
                                  ),
                                ],
                              ),
                              onTap: () {
                                Get.back();
                                logOut();
                              },
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            Get.back();
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

logOut() {
  return Get.dialog(Material(
    color: Colors.transparent,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 16),
          width: MediaQuery.of(Get.context!).size.width - 100,
          decoration: BoxDecoration(
            color: ColorStyle.bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Are You Sure ? ',
                    style: TextStyles.textSize_22.apply(
                      color: ColorStyle.primaryColor,
                      fontFamily: 'GEDinarOne',
                      // fontWeightDelta: 2
                    )
                  ),
                  SizedBox(height: 2,),
                  Text(
                    'Do You Want To Logout ? ',
                    style: TextStyles.textSize_16.apply(
                      color: ColorStyle.primaryColor,
                      fontFamily: 'GEDinarOne',
                      // fontWeightDelta: 2
                    )
                  )
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      child:  Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          'Log out',
                          style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'GEDinarOne',),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                      ),
                      onTap: (){
                        Get.back();
                        Get.off(AuthList());
                      },
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: InkWell(
                      child:  Container(
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          'Cancel',
                          style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'GEDinarOne',),

                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                      onTap: (){
                        Get.back();
                      },
                    ),
                  ),
                ],
              )


            ],
          ),
        ),
      ],
    ),
  ));
}
