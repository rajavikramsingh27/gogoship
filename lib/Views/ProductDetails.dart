import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:gogoship/Styles/TextStyles.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:gogoship/Views/BottomNavigationBarView.dart';
import 'package:get/get.dart';
import 'package:gogoship/Views/TabbarScreen.dart';
import 'package:gogoship/Controllers/TabbarScreenController.dart';



class ProductDetails extends StatelessWidget {
  ProductDetails({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorStyle.fromHex("#022C43"),
      key: _scaffoldKey,
      drawer: DrawerStyle(),

      appBar: AppBarStyle(
        onTap: () {
          _scaffoldKey.currentState?.openDrawer();
        },
      ),
      body: Stack(
        children: [
          Positioned(
              bottom: 50,
              right: 0,
              left: 0,
              top: 0,
              child: WebView(
                initialUrl: 'https://flutter.dev',
              ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: BottomNavigationBarView(
              onTap1: () {
                Get.offAll(TabbarScreen(indexSelected: 0,));
              },
              onTap2: () {
                Get.offAll(TabbarScreen(indexSelected: 1,));
              },
              onTap3: () {
                Get.offAll(TabbarScreen(indexSelected: 2,));
              },
            ),
          ),
          Positioned(
              bottom: 90,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 54,
                      padding: EdgeInsets.only(
                        left: 16, right: 16
                      ),
                      decoration: BoxDecoration(
                        color: ColorStyle.secondaryColor.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'New Order',
                            style: TextStyles.textSize_25.apply(
                              color: ColorStyle.primaryColor,
                              fontSizeFactor: 0.8,
                            ),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.shopping_cart,
                            color: ColorStyle.primaryColor,
                            size: 32,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
          ),
        ],
      )
    );
  }
}

