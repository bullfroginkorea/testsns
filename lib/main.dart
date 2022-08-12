import 'package:flutter/material.dart';
import 'package:flutter_memo/landingpage.dart';
import 'package:get/get.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //theme: ThemeData(fontFamily: 'PlayfairDisplay-VariableFont_wght'),//나이트모드?
      home: LandingPage(),
      //실행후 landingpage 호출되고나서 
      //initstate실행 >3초후 mainpage로감 
    );

  }
}

