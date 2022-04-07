
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyAccountPageController extends GetxController {
  RxInt intAppBar = 0.obs;

  RxList<Icon> listIcons = [

    Icon(Icons.person,
      size: 42,
    ),
    Icon(Icons.wallet_travel_sharp,
      size: 42,),
    Icon(Icons.attractions,
      size: 42,),
    Icon(Icons.history,
      size: 42,),
    Icon(Icons.account_balance_wallet,
      size: 42,),


    Icon(Icons.person,
      size: 42,
    ),
    Icon(Icons.wallet_travel_sharp,
      size: 42,),
    Icon(Icons.attractions,
      size: 42,),
    Icon(Icons.history,
      size: 42,),
    Icon(Icons.account_balance_wallet,
      size: 42,),


  ].obs;

  RxList<String> listOrder = [
    'My Profile ','My Orders','Order Tracking','History','My Wallet',
    'My Profile ','My Orders','Order Tracking','History','My Wallet'
  ].obs;

  reset() {
    intAppBar.value = 0;
  }
}

