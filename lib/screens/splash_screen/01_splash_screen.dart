// ignore_for_file: file_names

import 'package:doctor/screens/home_screen/home_screen_controller.dart';
import 'package:doctor/screens/login_screen/login_screen_controller.dart';
import 'package:doctor/screens/splash_screen/01_splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/asset_res.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Center(
        child: Image.asset(
          AssetRes.splashScreen1,
          height: Get.height * 0.30,
        ),
      ),
    );
  }
}
