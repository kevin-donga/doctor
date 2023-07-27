import 'package:doctor/screens/signup_screen/signup_screen_controller.dart';
import 'package:doctor/screens/signup_screen/signup_screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../login_screen/login_screen_widget.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=Get.height;
    Get.put(SignupScreenController());
    return Scaffold(body: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(height * 0.04),
          child: Column(children: [
            SizedBox(height: height * 0.14),
            topImageSignUp(),
            SizedBox(height: height * 0.04),
            middleTextSignUp(),
            SizedBox(height: height * 0.04),
            emailTextFieldSignUp(),
            SizedBox(height: height * 0.04),
            passTextFieldSignUp(),
            SizedBox(height: height * 0.04),
            signUpButton(),
            SizedBox(height: height * 0.14),
            // forgetPassTextLogin(),
            // SizedBox(height: height * 0.09),
            alreadydUserTextSignUp(),
          ]),
        ),
      ),
    ),);
  }
}