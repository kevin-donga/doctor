import 'package:doctor/screens/splash_screen/01_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const GetMaterialApp(
    home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
