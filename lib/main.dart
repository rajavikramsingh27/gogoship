import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gogoship/Components/Buttons.dart';
import 'package:gogoship/Components/TextFields.dart';
import 'package:gogoship/Views/StartUp.dart';
import 'package:flutter/services.dart';


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
      home: Material(child:
      Container
        (
        color: Colors.blueGrey,
          padding:EdgeInsets.only(
            left: 10,right: 10,top: 100,
          ),child: ButtonDone()),),
    );
  }
}
