import 'package:flutter/material.dart';
import 'package:getx/firsrt_class.dart';
import 'package:get/get.dart';
import 'package:getx/language.dart';
import 'package:getx/second_class.dart';
//** --Todo no 6 Routes
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Languages(),
      locale: Locale('en' , 'UK'),
      fallbackLocale: Locale('en' , 'UK'),
      debugShowCheckedModeBanner: false,
      title: 'Getx',
      theme: ThemeData(
          // colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          // useMaterial3: true,
          ),
      home: 
       MyHomePage(name: 'abdullah',),
      //todo # 6: Routes
      getPages: [
        GetPage(name: '/', page: () => MyHomePage()),
        GetPage(name: '/screenOne', page: () => Screen())
      ],
    );
  }
}
