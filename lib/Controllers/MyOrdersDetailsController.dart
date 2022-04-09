import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyOrdersDetailsController extends GetxController {

  RxInt intAppBar = 0.obs;


  RxList<String> listOrder = [
    'Cancelled  ','Paid','Pending','Processing','Waiting'
  ].obs;

  reset() {
    intAppBar.value = 0;
  }

}
