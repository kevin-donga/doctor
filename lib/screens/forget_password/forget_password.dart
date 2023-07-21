import 'package:doctor/screens/forget_password/forget_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'forget_password_widget.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(ForgotController());
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(children: [
            topContainer(),
            SizedBox(height: Get.height * 0.03),
            topImageForgot(),
            SizedBox(height: Get.height * 0.05),
            mobileTextField(),
            SizedBox(height: Get.height * 0.04),
            //emailTextFieldForgot(),
            SizedBox(height: Get.height * 0.07),
            forgotButton(),
            // forgetPassTextLogin(),
            // SizedBox(height: Get.height * 0.09),
            // alreadydUserTextLogin(),
          ]),
        ),
      ),
    );
  }
}
