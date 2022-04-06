import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TabbarScreenController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxString dateOfBirth = ''.obs;
  RxInt yesandno = 0.obs;

  reset() {
    yesandno.value = 0;


  }
}

