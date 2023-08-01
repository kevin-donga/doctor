import 'package:doctor/screens/OTP_verification_screen/verification_screen_controller.dart';
import 'package:doctor/screens/OTP_verification_screen/verification_screen_widget.dart';
import 'package:doctor/screens/forget_password/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common_widget/common_appbar.dart';
import '../../utils/string_res.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(VerificationController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
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
