
import 'package:get/get.dart';

class CounterController extends GetxController {
   RxInt conter = 0.obs;
   void increment() {
     conter++;
   }
}