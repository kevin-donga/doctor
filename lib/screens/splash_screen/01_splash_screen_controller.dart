// ignore_for_file: file_names
import 'dart:async';
import 'package:get/get.dart';
import '02_splash_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      Get.off(() => const SlashScreen02());
    });
    super.onInit();
  }
}
