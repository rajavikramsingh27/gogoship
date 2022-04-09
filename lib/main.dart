import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:gogoship/Views/MyAccountPage.dart';
import 'package:gogoship/Views/MyOrders.dart';
import 'package:gogoship/Views/MyOrders2.dart';
import 'package:gogoship/Views/MyProfile.dart';
import 'package:gogoship/Views/NewOrder.dart';
import 'package:gogoship/Views/OderDetails.dart';

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
      home: NewOrder()
    );
  }
}
