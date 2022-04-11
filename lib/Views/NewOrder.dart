import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Controllers/NewOrderController.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:gogoship/Styles/EffectStyle.dart';
import 'package:gogoship/Components/ButtonStyle.dart';
import '../Components/DrawerStyle.dart';



class NewOrder extends StatelessWidget {

  const NewOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NewOrderController());

    final GlobalKey<ScaffoldState> _scaffoldKey =
    new GlobalKey<ScaffoldState>();

    return Scaffold(
        backgroundColor: ColorStyle.secondaryColor,
        resizeToAvoidBottomInset: true,
        key: _scaffoldKey,
        drawer: DrawerStyle(),
        appBar: AppBarStyle(
          iconLeading: Icons.menu,
          onTap: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
        body: Obx(() => SingleChildScrollView(
          padding: EffectStyle.paddingNewOrder(),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Product Name',
                style: TextStyles.textSize_16.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Product URL',
                style: TextStyles.textSize_16.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Text(
                'Product Color',
                style: TextStyles.textSize_16.apply(
                  color: Colors.white,
                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Product Size',
                          style: TextStyles.textSize_16.apply(
                            color: Colors.white,
                          ),),
                        SizedBox(height: 10),
                        TextFieldsWhiteRound(),
                      ],
                    ),

                  ),
                  SizedBox(width: 50),
                  Expanded(
                    child:   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Quantity',
                          style: TextStyles.textSize_16.apply(
                            color: Colors.white,
                          ),),
                        SizedBox(height: 10),
                        Container(
                          // padding: EffectStyle.paddingNewOrderr(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                icon: Icon(
                                  Icons.remove,
                                  size: 30,
                                ),
                                onPressed: () {
                                  if (controller.quantity.value > 1)
                                  controller.quantity.value = controller.quantity.value-1;
                                },
                              ),
                              Text(
                                controller.quantity.value.toString(),
                                style: TextStyles.textSize_16.apply(
                                  color: Colors.black,
                                  fontFamily: 'GEDinarOne',
                                  fontSizeDelta: 5
                                ),
                              ),
                              IconButton(
                                icon: Icon(
                                  Icons.add,
                                  size: 30,
                                ),
                                onPressed: () {
                                  controller.quantity.value = controller.quantity.value+1;
                                },
                              ),
                            ],
                          ),
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: ColorStyle.bgColor,
                              width: 0.5,),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),                        ),
                        ),
                      ],
                    ),

                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Any Note?',
                style: TextStyles.textSize_16.apply(
                  color: Colors.white,

                ),),
              SizedBox(height: 10),
              TextFieldsWhiteRound(),
              SizedBox(height: 20),




              Row(
                children: [
                  Text(
                    'Do you have Coupon Code?',
                    style: TextStyles.textSize_16.apply(
                      color: Colors.white,
                    ),),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      height: 22,
                      width: 22,
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Colors.transparent,
                            elevation: 0,
                            padding: EdgeInsets.all(0)),
                        child: Icon(
                          controller.agree.value ?
                          Icons.check_box : Icons.check_box_outline_blank_outlined,
                          color: ColorStyle.bgColor,
                        ),



                        // Image.asset(
                        //   controller.agree.value
                        //       ? 'assets/images/check.png'
                        //       : 'assets/images/uncheck.png',
                        //   height: 22,
                        //   width: 22,
                        //
                        // ),
                        onPressed: () {
                          controller.agree.value =
                          !controller.agree.value;

                          // setState(() {});
                        },
                      )),
                ],
              ),

              SizedBox(height: 50),
              ButtonDone(onTap: () {

              },),

            ],
          ),
        ))
    );
  }

  void setState(Null Function() param0) {}
}
