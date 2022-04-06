import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/DrawerStyleController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';

class DrawerStyle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(DrawerStyleController());

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
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
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(80),
                          border: Border.all(
                            width: 2,
                            color: ColorStyle.bgColor,
                          )
                        ),
                        width: 114,
                        height: 114,
                      ),
                      SizedBox(height: 10,),
                      Text(
                        'User Name',
                        style: TextStyle(
                            fontSize: 22,
                            color: Colors.white
                        ),
                      ),

                    ],
                   ),
                 ),
            Column(
              children: [
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: controller.listIcons.length,
                    // scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      String bg_SecondColor;
                      return Column(
                        children: [
                           Row(
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
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18

                          ),
                        ),



                      ],
                      ),
                          Container(height: 2, width: 296, color: ColorStyle.secondaryColor,)
                        ],
                      );

                    }),
                SizedBox(
                  height: 15,
                ),




              ],
            ),
             SizedBox(height: 200,),
             InkWell(
               child: Row(
                 children: [
                   SizedBox(width: 14,),
                   Image.asset(
                     'assets/images/logout.png',
                     // width: 53,
                     // height: 80,
                   ),
                   SizedBox(width: 10,),
                   Text(
                     'Logout',
                     style: TextStyle(
                       fontSize: 28,
                       color: ColorStyle.secondaryColor,
                     ),
                   ),

                 ],
               ),
               onTap: (){},
             )

          ],
        ),
      )
    );
  }
}
