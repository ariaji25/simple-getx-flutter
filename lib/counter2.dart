import 'package:get/get.dart';

class Counter2 extends GetxController {
  RxString counter2 = "0".obs;

  void increment(int i) {
    counter2.value = counter2.value + "$i";
  }
}
