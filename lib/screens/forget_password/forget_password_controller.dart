import 'package:doctor/screens/OTP_verification_screen/verification_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController {
  TextEditingController mobileController = TextEditingController();
  TextEditingController countryController = TextEditingController();
  String verify = '';

  Future<void> forgotButton() async {
    try {
      await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: countryController.text.trim() + mobileController.text.trim(),
        verificationCompleted: (PhoneAuthCredential credential) {},
        verificationFailed: (FirebaseAuthException e) {},
        codeSent: (String verificationId, int? resendToken) {
          verify = verificationId;
          Get.to(const VerificationScreen());
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      Get.snackbar("Failed", "Please Enter Valid Mobile Number",
          snackPosition: SnackPosition.TOP);
    }
  }

  void iconButton() {
    Get.back();
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    countryController.text = "+91";
  }
}
