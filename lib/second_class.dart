import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/ex1_counter_controller.dart';
import 'package:getx/ex3_controller.dart';
import 'package:getx/ex2_controller.dart';

//** --WE LEARN:
/// 1- GetX Counter Example, leave it
/// 2- GetX Example Two
///* 3- GetX Example Three
///(in 3 we use Obx, controllers, class of Example2Controler which extends GetxController, obx, Rdint or double cvalues)
///* 4- Example 3 Favourite App with GetX =>  (In new folder name (fav_app_getx))
/// 5- GetX Image Picker => Favourite App with GetX (In new folder name (fav_app_getx))
/// 6- Login(Post,Put, Delete) Api With GetX => Favourite App with GetX (In new folder name (fav_app_getx))
/// 7- Get Api with GetX => Favourite App with GetX (In new folder name (fav_app_getx))

// todo no 1: it just a simple counter example that shows whole will rebuild if we don't use state management
class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final CounterControllerExam1 controller = Get.put(CounterControllerExam1());
  final Example2Controler controller2 = Get.put(Example2Controler());
  final Example3Controler controller3 = Get.put(Example3Controler());

  int coutner = 0;
  // bool noti = false;
  double opacity = .4;
  @override
  Widget build(BuildContext context) {
    print('buildd');
    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: Center(
        child: Column(
          children: [
            Center(
              //todo no 2: Use obx and counter_controller increment method for counter example
              child: Obx(
                () {
                  return Text(
                    controller.counter.toString(),
                    style: const TextStyle(fontSize: 34),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            //todo no 3: Example no 2 opacity with slider
            Obx(
              () => Container(
                height: 200,
                width: 200,
                color: Colors.red.withOpacity(controller2.opacity.value),
              ),
            ),
            Obx(
              () => Slider(
                value: controller2.opacity.value,
                onChanged: (value) {
                  // print(value);
                  // opacity = value;
                  controller2.setOpacity(value);
                },
              ),
            ),

            //todo no 4: Example no 3 opacity with slider (here also setState rebuild whole widget)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Notifications'),
                Obx(
                  () => Switch(
                    value: controller3.notification.value,
                    onChanged: (value) {
                      // noti = value;
                      controller3.setNotification(value);
                      // setState(() {});
                    },
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
      ),
    );
  }
}
