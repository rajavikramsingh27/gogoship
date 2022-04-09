import 'package:flutter/material.dart';
import 'package:gogoship/Components/AppBarStyle.dart';
import 'package:gogoship/Styles/ColorStyle.dart';
import 'package:gogoship/Components/DrawerStyle.dart';
import 'package:webview_flutter/webview_flutter.dart';

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
      body: WebView(
        initialUrl: 'https://flutter.dev',
      ),
    );
  }
}

