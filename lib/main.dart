import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_list/Screen/home_screen.dart';
import 'package:user_list/Screen/welecome_screen.dart';

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
      home: HomeScreen(),
    );
  }
}
