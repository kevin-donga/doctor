import 'package:doctor/screens/forget_password/forget_password_controller.dart';
import 'package:doctor/screens/home_screen/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/pref_service.dart';
import '../../utils/pref_res.dart';

class VerificationController extends GetxController {
  TextEditingController otpController = TextEditingController();
  ForgotController otpPassword = Get.find<ForgotController>();
  FirebaseAuth auth = FirebaseAuth.instance;
  var code = '';

  Future<void> verificationIconButton() async {
    try {
      PhoneAuthCredential credential = PhoneAuthProvider.credential(
          verificationId: otpPassword.verify, smsCode: code);
      await auth.signInWithCredential(credential);
      PrefService.setValue(PrefRes.isLogin, true);
      Get.offAll(() => const HomeScreen());
    } catch (e) {
      Get.snackbar("Verification Failed", "Please Enter Valid OTP",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  void pinPutOnChanged(value) {
    code = value;
  }
}
