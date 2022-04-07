import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Controllers/DrawerStyleController.dart';
import 'package:gogoship/Controllers/HomeScreenController.dart';
import 'package:gogoship/Controllers/TabbarTabController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/AppBarTab.dart';
import 'package:gogoship/Styles/ImageStyle.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeScreenController());

    return Scaffold(

      backgroundColor: ColorStyle.borderColorTF1,
      appBar: AppBarStyle.appBar,
      body: GetBuilder<HomeScreenController>(
        init: HomeScreenController(),
        initState: (state) {
          controller.reset();

          // print(controller.listSelected.value);
        },
        builder: (authController) {
          return Obx(() =>   SingleChildScrollView(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child:  Text(

                    'Quick Search',
                    style: TextStyle(
                        color: ColorStyle.bgColor,
                        fontSize: 22

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(width: 12,),

                    Expanded(

                      child: TextFieldsWhiteRound(),

                    ),
                    SizedBox(width: 4,),
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
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.only(left: 16,right:16 ),
                  padding: EdgeInsets.only(left: 16,right:16 ),
                  width: 367,
                  height: 283,
                  child:   Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Container(

                        child: Text(

                          'Turkey ',
                          style: TextStyle(
                              color: ColorStyle.bgColor,
                              fontSize: 18

                          ),
                        ),
                        padding: EdgeInsets.only(left: 10),
                      ),
                      SizedBox(height: 14,),
                      Expanded(child:    GridView.builder(
                        // itemCount: 4,
                          itemCount: controller.images.length,
                          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              crossAxisSpacing: 10,
                              mainAxisSpacing: 10,
                              mainAxisExtent: 62
                          ),
                          itemBuilder: (BuildContext context, int index){
                            return   Container(
                              // color: ColorStyle.bgColor,
                              // height: 20,
                              // width: 159,
                              child: Image.asset(controller.images[index],),
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryColor,
                                  borderRadius: BorderRadius.circular(10),

                                  boxShadow: [BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 2.0,
                                  ),]
                              ),
                            );
                          }

                      ),)
                    ],
                  ),


                  decoration: BoxDecoration(
                    color: ColorStyle.secondaryColor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  margin: EdgeInsets.only(left: 16,right:16 ),
                  padding: EdgeInsets.only(left: 16,right:16 ),
                  width: 367,
                  height: 220,
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10,),
                      Container(

                        child: Text(

                          'USA ',
                          style: TextStyle(
                              color: ColorStyle.bgColor,
                              fontSize: 18

                          ),
                        ),
                        padding: EdgeInsets.only(left: 10),
                      ),
                      SizedBox(height: 14,),
                      Expanded(child:  GridView.builder(
                        // itemCount: 4,
                          itemCount: controller.images1.length,
                          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            mainAxisExtent: 62,

                          ),
                          itemBuilder: (BuildContext context, int index){
                            return   Container(
                              // color: ColorStyle.bgColor,
                              // height: 20,
                              // width: 159,
                              child: Image.asset(controller.images[index],),
                              decoration: BoxDecoration(
                                  color: ColorStyle.primaryColor,
                                  borderRadius: BorderRadius.circular(10),

                                  boxShadow: [BoxShadow(
                                    color: Colors.black54,
                                    blurRadius: 2.0,
                                  ),]
                              ),
                            );
                          }

                      ),)
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: ColorStyle.secondaryColor,
                    borderRadius: BorderRadius.circular(10),

                  ),
                ),
              ],
            ),
          ));
        },
      )

    );
  }
}

filter () {
  final controller = Get.put(HomeScreenController());

  return Get.dialog(
    Material(
      color: Colors.transparent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 18,right: 18),
            height: 432,
            width: 374,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child:  Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 31,
                        height: 31,
                        child: Icon(Icons.clear),
                        decoration: BoxDecoration(
                            color: ColorStyle.bgColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [new BoxShadow(
                              color: Colors.black12..withOpacity(0.16),
                              blurRadius: 50.0,
                            ),]

                        ),
                      ),
                        onTap: (){
                        Get.back();
                        },
                    )
                  ],
                ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 20),            // shrinkWrap: true,
                itemCount: controller.chooseFashationSelected.length,
                // scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),

                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                     InkWell(
                       child:  Container(
                         alignment: Alignment.center,
                         height: 45,
                         width: 349,
                         margin: EdgeInsets.only(left: 16,right: 16,bottom: 10),
                         child: Text(
                           // 'Logo',
                           controller.chooseFashation[index],
                           style: TextStyle(
                               color: Colors.black,
                               fontSize: 15

                           ),
                         ),
                         decoration: BoxDecoration(
                             color: ColorStyle.bgColor,
                             borderRadius: BorderRadius.circular(10),
                             boxShadow: [new BoxShadow(
                               color: Colors.black12..withOpacity(0.5),
                               blurRadius: 100.0,
                             ),]

                         ),

                       ),
                       onTap: (){},
                     )

                    ],
                  );

                }),),
                Container(
                  alignment: Alignment.center,
                  child:    Text(
                    'Electronics',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                ),
                SizedBox(height: 50,),
              ],
            ),
            decoration: BoxDecoration(
              color: ColorStyle.primaryColor,
              borderRadius: BorderRadius.circular(10),

            ),
          ),
        ],
      ),
    )
  );
}