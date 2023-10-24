import 'package:get/get.dart';

//todo no 2: we use getx for counter example and we see that only one widget rebuild not whole
class CounterControllerExam1 extends GetxController {
  RxInt counter = 1.obs;

  incrementCounter(){
    counter.value++;
    print(counter.value);
  }
}
