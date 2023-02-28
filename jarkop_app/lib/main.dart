import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jarkop_app/Pages/navipage.dart';
import 'package:jarkop_app/Pages/Splashscreen/splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
      // home: Navipage(),
    );
  }
}
