// ignore: file_names
// ignore_for_file: file_names, duplicate_ignore

import 'dart:async';

import 'package:get/get.dart';

import '../introduction_screen/introduction_screen.dart';

class Splash2Controller extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const IntroductionScreen());
    });
  }
}
