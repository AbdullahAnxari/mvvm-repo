// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';

//** --WE LEARN:
// 1- GetX Snackbar
// 2- Getx Dialog Alert
// 3- Getx Bottom Sheet
// 4- Getx Change Light & Dark Theme with GetX Flutter
// 5- GetX Navigation and GetX Routes
// 6- On Main Screen (Routes)
// 7- Get height & Get widh
// 8- GetX Localization Change the Language of the App i.g Englihs, Urdu, Hindi

class MyHomePage extends StatefulWidget {
  var name;
  MyHomePage({
    Key? key,
    this.name,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height * 1;
    return Scaffold(
      endDrawerEnableOpenDragGesture: false,
      appBar: AppBar(
        title: Text('GETX${widget.name[0]}'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('Dialog'),
                  subtitle: const Text(
                    'Subtile Data',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    //todo # 2: GetX DIALOG
                    Get.defaultDialog(
                        title: 'Delete it',
                        middleText: 'Are you sure you want to delete this chat',
                        textConfirm: 'yes',
                        textCancel: 'no',
                        confirmTextColor: Colors.white,
                        confirm: TextButton(
                            onPressed: () {}, child: const Text('ok')),
                        cancel: TextButton(
                            onPressed: () {}, child: const Text('cancel')),
                        titlePadding: const EdgeInsets.all(18),
                        contentPadding: const EdgeInsets.all(18));
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('Navigation and '),
                  subtitle: const Text(
                    'Getx routes',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () {
                    //todo # 5: GetX Navigation and GetX Routes
                    //* --GetX Navigation
                    // Get.to(Screen());
                    // Get.back(Screen());
                    //* --Getx with routes
                    Get.toNamed('/screenOne', arguments: [
                      'Asif'
                          'Abdullah'
                    ]);
                  },
                ),
              ),
            ),

            //todo # 3: GetX Bottom Sheet
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: ListTile(
                  title: const Text('Bottom sheet'),
                  subtitle: const Text('Subtile Data'),
                  onTap: () {
                    //Bottom sheet
                    Get.bottomSheet(
                      Column(
                        children: [
                          //todo # 4: GET.DARK THEME
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Card(
                              child: ListTile(
                                title: const Icon(Icons.dark_mode),
                                subtitle: const Text('Dark theme'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.dark());
                                },
                              ),
                            ),
                          ),

                          ///GET.LIGHT THEME
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Card(
                              child: ListTile(
                                title: const Icon(Icons.light_mode),
                                subtitle: const Text('Light theme'),
                                onTap: () {
                                  Get.changeTheme(ThemeData.light());
                                },
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Card(
                              child: ListTile(
                                title: const Text('Data'),
                                subtitle: const Text('Subtile Data'),
                                onTap: () {
                                  ///DIALOG
                                  Get.defaultDialog(
                                      title: 'Delete it',
                                      middleText:
                                          'Are you sure you want to delete this chat',
                                      textConfirm: 'yes',
                                      textCancel: 'no',
                                      confirmTextColor: Colors.white,
                                      confirm: TextButton(
                                          onPressed: () {},
                                          child: const Text('ok')),
                                      cancel: TextButton(
                                          onPressed: () {},
                                          child: const Text('cancel')),
                                      titlePadding: const EdgeInsets.all(18),
                                      contentPadding: const EdgeInsets.all(18));
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),

            //todo # 7 Get height & Get width
            Container(
              height: Get.height * .2,
              // width: Get.width * 2,
              color: Colors.red,
            ),
            SizedBox(height: 20),
            Container(
              height: Get.height * .2,
              // width: Get.width * .2,
              color: Colors.blue,
            ),

            //todo # 8 GetX Localization Change the Language of the App i.g Englihs, Urdu, Hindi
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                OutlinedButton(
                    onPressed: () {
                      Get.updateLocale(Locale('en', 'UK'));
                    },
                    child: Text('English')),
                SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    Get.updateLocale(Locale('ur', 'PK'));
                  },
                  child: Text('Urdu'),
                ),
              ],
            ),
          ],
        ),
      ),

      //todo # 1: GetX Snackbar on pressing floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            'SnackBar',
            'Follow',
            backgroundColor: Colors.blue,
            snackPosition: SnackPosition.BOTTOM,
            snackStyle: SnackStyle.FLOATING,
            icon: const Icon(Icons.add),
          );
        },
      ),
    );
  }
}
