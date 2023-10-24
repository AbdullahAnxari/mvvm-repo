import 'package:get/get.dart';

class Example2Controler extends GetxController {
  RxDouble opacity = .4.obs;
  setOpacity(double value) {
    opacity.value = value;
  }
}
