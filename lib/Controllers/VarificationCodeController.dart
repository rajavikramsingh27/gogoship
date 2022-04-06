
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationCodeController extends GetxController {

  Rx<TextEditingController> txtOTP_First = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Second = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Third = TextEditingController().obs;
  Rx<TextEditingController> txtOTP_Fourth = TextEditingController().obs;

  reset() {

  }
}