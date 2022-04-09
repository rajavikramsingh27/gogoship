import 'package:get/get.dart';

class HomeScreenController extends GetxController {
  RxInt listCount = 3.obs;

  RxList<String> images = <String>[
    'assets/images/mn056nmj.png',
    'assets/images/olgwkil1.png',
    'assets/images/5a1ac9fdf65d84088faf1388.png',
    'assets/images/08viyg7p.png',
    'assets/images/585990604f6ae202fedf28d3.png',
    'assets/images/585991924f6ae202fedf28d7.png',
  ].obs;

  RxList<String> images1 = <String>[
    'assets/images/Nike.png',
    'assets/images/olgwkil1.png',
    'assets/images/mouse.png',
    'assets/images/walmasrt.png',
  ].obs;



  RxList<bool> chooseFashationSelected =
      [false].obs;

  RxList<String> chooseFashation = [
    'Baby',
    'Boys Fashion',
    'Girls Fashion',
    'Health & Beauty',
    "Men's Fashion",
    "Electornics"
  ].obs;

  reset() {
    chooseFashationSelected.clear();
    for (int i=0; i<chooseFashation.length; i++) {
      chooseFashationSelected.add(false);
    }
  }
}
