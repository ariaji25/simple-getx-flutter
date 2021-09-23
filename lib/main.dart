import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_x/counterBinding.dart';
import 'package:get_x/counterView.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      getPages: [
        GetPage(
          name: '/home',
          binding: CounterBinding(),
          page: () => MyHomePage(),
        ),
      ],
    );
  }
}
