import 'package:doctor/screens/OTP_verification_screen/verification_screen_controller.dart';
import 'package:doctor/screens/OTP_verification_screen/verification_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationController());
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Column(
            children: [
              verificationContainer(),
              SizedBox(height: Get.height * 0.04),
              topImage(),
              SizedBox(height: Get.height * 0.10),
              pinPutWidget(),
              SizedBox(height: Get.height * 0.20),
              verifyButton(),
            ],
          ),
        ),
      ),
    );
  }
}
