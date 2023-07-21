import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:doctor/screens/signup_screen/signup_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_screen/login_screen_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(SignupScreenController());
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(Get.height * 0.04),
            child: Column(children: [
              SizedBox(height:  Get.height * 0.14),
              topImageLogin(),
              SizedBox(height: Get.height * 0.04),
              middleTextLogin(),
              SizedBox(height: Get.height * 0.04),
              emailTextFieldLogin(),
              SizedBox(height: Get.height * 0.04),
              passTextFieldLogin(),
              SizedBox(height: Get.height * 0.04),
              loginButton(),
              SizedBox(height: Get.height * 0.04),
              forgetPassTextLogin(),
              SizedBox(height: Get.height * 0.09),
              alreadydUserTextLogin(),
            ]),
          ),
        ),
      ),
    );
  }
}
