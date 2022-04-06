import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerStyleController extends GetxController {
  RxInt intAppBar = 0.obs;

  RxList<Icon> listIcons = [
    Icon(Icons.person),
    Icon(Icons.stroller_sharp),
    Icon(Icons.archive),
    Icon(Icons.payments),
    Icon(Icons.wallet_travel_sharp),



  ].obs;

  RxList<bool> listOrderSelected = [false, false,false,false, false,false].obs;
  RxList<String> listOrder = [
    'My Profile ','My Orders','Archive','Payments','My Wallet'
  ].obs;

  reset() {
    intAppBar.value = 0;
  }
}
