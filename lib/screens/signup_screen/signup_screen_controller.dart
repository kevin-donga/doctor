import 'package:doctor/screens/login_screen/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../utils/asset_res.dart';

class SignupScreenController extends GetxController {
  void alreadydUserTextLogin() {
    Get.to(const LoginScreen());
  }
}

Widget topImageSignUp() {
  return Image.asset(
    AssetRes.splashScreen1,
    height: 150,
  );
}
