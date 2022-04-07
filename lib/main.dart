import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Views/HomeScreen.dart';
import 'package:flutter/services.dart';
import 'package:gogoship/Views/MyAccountPage.dart';
import 'package:gogoship/Views/MyOrders.dart';
import 'package:gogoship/Views/OderDetails.dart';
import 'package:gogoship/Views/StartUp.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyOrders()
    );
  }
}
