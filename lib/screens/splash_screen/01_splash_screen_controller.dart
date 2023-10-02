// ignore_for_file: file_names
import 'dart:async';
import 'package:doctor/screens/bottom_navbar/bottom_navbar.dart';
import 'package:doctor/services/pref_service.dart';
import 'package:doctor/utils/pref_res.dart';
import 'package:get/get.dart';
import '02_splash_screen.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    bool isLogin = PrefService.getBool(PrefRes.isLogin);
    Timer(const Duration(seconds: 3), () {
      Get.off(() => isLogin ? const BottomNavBar() : const SlashScreen02());
    });
    super.onInit();
  }
}
