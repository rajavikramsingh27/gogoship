import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyOrdersDetailsController extends GetxController {

  RxInt intAppBar = 0.obs;




  String? selectedValue;

  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'All',
  ];


  RxList<String> listOrder = [
    'Cancelled  ','Paid','Pending','Processing','Waiting'
  ].obs;

  reset() {
    intAppBar.value = 0;
  }

}
