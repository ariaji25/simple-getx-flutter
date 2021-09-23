import 'package:get/get.dart';
import 'package:get_x/counter2.dart';
import 'package:get_x/counterController.dart';

class CounterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CounterController());
    Get.put(Counter2());
  }

}